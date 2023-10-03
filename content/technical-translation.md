---
title: "Preparing a Resource for Translations"
permalink: /technical/translations/
lang: en
doc-note-type: draft
github:
  repository: w3c/wai-website-theme
  path: content/technical-translation.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Tasks needed to get a resource ready for translations.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Frontmatter template

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```md
---
# Translation instructions are after the "#" character in this first section. They are comments that do not show up in the web page. You do not need to translate the instructions after "#".
# In this first section, do not translate the words before a colon. For example, do not translate "title:". Do translate the text after "title:".

title: My Example Document
nav_title: "Standards/Guidelines"
lang: en   # Change "en" to the translated-language shortcode
last_updated: 2020-11-11   # Put the date of this translation YYYY-MM-DD (with month in the middle)

# translators: # remove from the beginning of this line and the lines below: "# " (the hash sign and the space)
# - name: "Translator Name Here" # Add one -name: line for every translator
# - name: "Jan Doe"   # Replace Jan Doe with translator name
# - name: "Jan Doe"   # Replace Jan Doe with name, or delete this line if not multiple translators
# contributors:
# - name: "Jan Doe"   # Replace Jan Doe with contributor name, or delete this line if none
# - name: "Jan Doe"   # Replace Jan Doe with name, or delete this line if not multiple contributors

github:
  repository: w3c/wai-std-gl-overview
  path: index.md    # Add the language shortcode to the middle of the filename, for example: content/index.fr.md

permalink: /standards-guidelines/  # Add the language shortcode to the end, with no / at the end. For example /standards-guidelines/fr
ref: /standards-guidelines/   # Do not change this

# In the footer below:
# Do not change the dates
# Do not translate or change CHANGELOG or ACKNOWLEDGEMENTS. (if CHANGELOG or ACKNOWLEDGEMENTS)
# Translate the other words below, including "Date:" and "Editor:" (Else)
# Translate the Working Group name. Leave the Working Group acronym in English.
footer: >
  <p><strong>Date:</strong> Updated 13 March 2019.</p>
  <p><strong>Editor:</strong> <a href="https://www.w3.org/People/Shawn/">Shawn Lawton Henry</a>.</p>
  <p>Developed with input from the Education and Outreach Working Group (<a href="http://www.w3.org/WAI/EO/">EOWG</a>).</p>

# Read Translations Notes for this resource at https://github.com/w3c/wai-std-gl-overview#readme
---

This is content for my **Example** Document.
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Frontmatter checklist

- All required frontmatter lines for translation interoperability are present. See [Frontmatter guide](/writing/frontmatter/) (lines marked with 🌐)
- Add comments
- Adapt footer translation notes depending on content
- Add link to repository translations notes when existing.

## Main content

### Links checklist

- When links go to WAI website, make sure permalink is used and not full URI. See [link markdown explanation in the template](https://github.com/w3c/wai-resource-template/blob/master/content/index.md#heading-level-2)
- When the linked text is the exact same as the title of the page on the WAI website, make sure it uses double brackets. See [link markdown explanation in the template](https://github.com/w3c/wai-resource-template/blob/master/content/index.md#heading-level-2)
