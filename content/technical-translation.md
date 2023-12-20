---
title: "Translations"
permalink: /technical/translations/
ref: /technical/translations/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/technical-translation.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Documentation related to WAI website translations.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Prepare a Resource for Translations

{::nomarkdown}
{% include box.html type="start" title="Frontmatter Template" class="example" %}
{:/}
{% include excol.html type="start" id="optional-id" %}

Show template

{% include excol.html type="middle" %}

```yml
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

navigation:
  previous: /path/to/previous/file/
  next: /path/to/next/file/

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

{% include excol.html type="end" %}
{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Frontmatter checklist

- All required frontmatter lines for translation interoperability are present. See [Frontmatter guide](/writing/frontmatter/) (lines marked with 🌐)
- Add translation instructions comments when missing
- Adapt footer translation instructions depending on content (changelog, acknowledgements, etc.)
- Add a link to the repository `Readme` file when it contains resource-specific Translations Notes.

### Main content

#### Links checklist

- When links go to WAI website, make sure permalink is used and not full URI. See [link markdown explanation in the template](https://github.com/w3c/wai-resource-template/blob/master/content/index.md#heading-level-2)
- When the linked text is the exact same as the title of the page on the WAI website, make sure it uses double brackets. See [link markdown explanation in the template](https://github.com/w3c/wai-resource-template/blob/master/content/index.md#heading-level-2)

## Update Translations Priorities

Priorities for Translating WAI Resources are listed in the [Step-by-Step Guide to Translating WAI Resources](https://www.w3.org/WAI/about/translating/step-by-step/#priorities) and in Translations Sitemaps.

To update the priorities list:
1. Navigate to the [wai-website-data {% include_cached external.html %}](https://github.com/w3c/wai-website-data) repository.
2. Update the `translations-priorities.yml` file as follows:
- `url`: [`ref` value](/writing/frontmatter/#ref) of the resource.
- Arrange lines in the order you want them to appear in the priorities list.
- If you want resource subpages to be displayed, use `pages:` and list subpages `url`s below.

{::nomarkdown}
{% include box.html type="start" title="Example" %}
{:/}
```yaml
- url: "/videos/standards-and-benefits/"
- url: "/fundamentals/accessibility-intro/"
- url: "/tips/"
  pages:
    - url: "/tips/writing/"
    - url: "/tips/designing/"
    - url: "/tips/developing/"
```
{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Add Translations Sitemaps

New Translations Sitemaps can easily be created.

To add a new translation sitemap:
1. Navigate to the [wai-about-wai {% include_cached external.html %}](https://github.com/w3c/wai-about-wai) repository.
2. In the `_about/translating/sitemaps/` folder, duplicate an existing sitemap.
3. Name the new file as follows: `sitemap-<language subtag>.md`
4. Update the following frontmatter parameters:
   - `title`\
   Update language name. Example: "Spanish Translations Progress"
   - `nav_title`\
   Update language name. Example: "Spanish"
   - `github` > `path`\
   Update filename. Example: `_about/sitemaps/sitemap-es.md`
   - `permalink`\
   Update with language subtag. Example: `/about/translating/sitemaps/sitemap-es/`
   - `ref`\
   Update with language subtag. Example: `/about/translating/sitemaps/sitemap-es/`
   - `tlang`\
   Update with language subtag.
   - **Note: Do not update `lang` parameter (the language used in the page is English).**
5. Add this new page in `navigation.yml`, in [wai-website-data {% include_cached external.html %}](https://github.com/w3c/wai-website-data) repository.
6. When published, [Translations Sitemaps list](https://www.w3.org/WAI/about/translating/sitemaps/) will automatically be updated.

## Manually Add Translations in "All WAI Translations page"

Some stand-alone resources are not automatically listed in [All WAI Translations page](https://www.w3.org/WAI/translations/).

To manually add resources translations:
1. Navigate to the [wai-website {% include_cached external.html %}](https://github.com/w3c/wai-website) repository.
2. In `translations.md` frontmatter, update `other_resources` metadata as follows:

{::nomarkdown}
{% include box.html type="start" title="Note" %}
{:/}

In the following list, parameters with ❗ emoji are required.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

- `lang` ❗\
  Language subtag.

- `title` ❗\
  Translated resource title.

- `en_title` ❗\
  Original resource title.

- `url` ❗\
  Absolute link to the resource.

- `translators` \
  Every translator is specified by their name in a separate line. In addition, organization name can be added (note: see [names and links policy](https://www.w3.org/WAI/about/translating/#links))

- `contributors` \
  Every contributor is specified by their name in a separate line. In addition, organization name can be added (note: see [names and links policy](https://www.w3.org/WAI/about/translating/#links))


{::nomarkdown}
{% include box.html type="start" title="Example" %}
{:/}
```yaml
other_resources:
  - lang: "fr"
    docs:
      - title: "Outil de rapport WCAG-EM"
        en_title: "WCAG-EM Report Tool"
        url: https://www.w3.org/WAI/eval/report-tool/
        translators:
          - name: "Jane Doe"
            org: "Example Organization"
        contributors:
          - name: "John Doe"
            org: "Example Organization"
```
{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Technical Details

### Translated pages in header

When a page has been translated into one or more languages, links to these translations are displayed at the top of the page.
This part is managed by [_includes/header.html](https://github.com/w3c/wai-website-theme/blob/master/_includes/header.html)

{::nomarkdown}
{% include box.html type="start" title="Example" %}
{:/}
<div class="opt languagelist">
<strong>This&nbsp;page&nbsp;in:</strong>
<ul class="languagelistul">
<li><strong>English</strong></li>
<li><a href="#" lang="es">Español</a></li>
<li><a href="#" lang="fr">Français</a></li>
</ul>
</div>
{::nomarkdown}
{% include box.html type="end" %}
{:/}

Features:
- The section lists Jekyll pages with the same [`ref`](/writing/frontmatter/#ref). \
**Note:** If multiple pages are found with the same [`lang`](/writing/frontmatter/#lang), this section will not work well.
- Language names displayed come from [`lang.json` file {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/lang.json) (`nativeName` value, capitalized using inline CSS).
- `dir` attribute is set to `auto` (see [associated behaviour in this W3C Internationalization page {% include_cached external.html %}](https://www.w3.org/International/questions/qa-html-dir#dirauto))
- `hreflang` attribute is missing <mark>(TO DO)</mark>
- If "This page in:" has been translated into the language of the current page (in [`translations.yml` {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/translations.yml)), this translation is used.

### Links to other pages

[WAI Markdown Extension](/writing/wai-markdown/) automatically modifies links to WAI website internal links, based on the following rules.

The extension looks for a translated version of the linked-to page: that is, a page sharing the same  [`lang`](/writing/frontmatter/#lang) as the current page, and the same [`ref`](/writing/frontmatter/#ref) as the linked-to page:
- When a translation is found, the links points to the translated page.
- When no translation is found:
  - The links points to the English version;
  - "(in English)" is added at the end of the link, in the language of the page (if translated in [`translations.yml` {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/translations.yml))

Link text is defined as follows:
- When single-brackets are used: \
Example: `[Custom link text]({%raw%}/{%endraw%}path/to/filename/)`
  - The custom link text defined between the brackets is used.

- When double-brackets are used:\
Example: `[[Title of WAI Page]]({%raw%}/{%endraw%}path/to/filename/)`
  - The [title](/writing/frontmatter/#title) of the linked-to page is used as link text.\
  This is the title of the translated page if a translation has been found; the title of the English version otherwise.
  - The link text between brackets is ignored.

