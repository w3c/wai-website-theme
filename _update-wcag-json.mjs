import { writeFile } from "fs/promises";
import { join } from "path";

const wcagUrl = "https://www.w3.org/WAI/WCAG22/wcag.json";

const wcag22 = await fetch(wcagUrl).then((response) => {
  if (response.status >= 400)
    throw new Error(`HTTP error code received: ${response.status}`);
  return response.json();
});

const data = {
  principles: [],
  guidelines: [],
  successcriteria: [],
};

/** Keys that denote nested techniques (especially for sufficient) */
const flattenableKeys = ["and", "groups", "techniques", "using"];

/**
 * Flattens any compound or hierarchical technique structures,
 * and filters any entries without IDs.
 */
function flattenTechniques(items) {
  return items.flatMap((obj) => {
    const techniques = [];
    if (obj.id && obj.technology && obj.title)
      // Push specifically these keys (e.g. don't include `using` which is handled below)
      techniques.push({
        id: obj.id,
        technology: obj.technology,
        title: obj.title,
      });
    for (const key of flattenableKeys) {
      if (key in obj) {
        techniques.push(...flattenTechniques(obj[key]));
        break;
      }
    }
    return techniques;
  });
}

/** RegExp to split technology and numeric parts of technique ID */
const techniqueIdPattern = /^([A-Z]+)(\d+)$/;

/** Hash which stores (and deduplicates) discovered techniques during initial pass */
const techniquesMap = {};

for (const principle of wcag22.principles) {
  for (const guideline of principle.guidelines) {
    for (const criterion of guideline.successcriteria) {
      data.successcriteria.push(criterion);

      // wcag.json does not include a flat map of techniques,
      // but WAI website has pages which can benefit from it (e.g. tutorials),
      // so flatten them based on hierarchical associations
      const techniques = [].concat(
        flattenTechniques(criterion.techniques.sufficient || []),
        flattenTechniques(criterion.techniques.advisory || []),
        flattenTechniques(criterion.techniques.failures || [])
      );

      for (const technique of techniques) {
        techniquesMap[technique.id] = {
          technology: technique.technology,
          title: technique.title,
        };
      }
    }
    delete guideline.successcriteria;
    data.guidelines.push(guideline);
  }
  delete principle.guidelines;
  data.principles.push(principle);
}

data.techniques = Object.entries(techniquesMap)
  .map(([id, { technology, title }]) => ({ id, technology, title }))
  .sort((a, b) => {
    const aMatch = techniqueIdPattern.exec(a.id);
    const bMatch = techniqueIdPattern.exec(b.id);
    if (!aMatch || !bMatch) return 0;
    if (aMatch[1] > bMatch[1]) return 1;
    if (aMatch[1] < bMatch[1]) return -1;
    if (+aMatch[2] > +bMatch[2]) return 1;
    if (+aMatch[2] < +bMatch[2]) return -1;
    return 0;
  });
  // .reduce((map, { id, technology, title }) => {
  //   map[id] = { technology, title };
  //   return map;
  // }, {});

try {
  const filename = join("_data", "wcag22.json");
  await writeFile(filename, JSON.stringify(data, null, "    ") + "\n");
  console.log(`${filename} generated successfully.`);
} catch (err) {
  console.error(err);
}
