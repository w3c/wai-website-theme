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

### Frontmatter Checklist

- Check that all the frontmatter lines that are required for translation interoperability are present. See [Frontmatter guide](/writing/frontmatter/) (lines marked with 🌐)
- Add translation instructions comments when missing
- Adapt footer translation instructions depending on content (changelog, acknowledgements, etc.)
- If specific instructions must be followed to translate this resoruce, add a link to the repository `Readme` file containing the Translations Notes.

### Markdown Links Checklist

- When using internal links on WAI website, make sure the [`permalink`](/writing/frontmatter/#permalink) is used and not the full URI.\
  Good example: `[More on Planning](/media/av/planning/)`\
  Bad example: `[More on Planning](https://www.w3.org/WAI/media/av/planning/#wcag-standard)`.
- When the linked text is the exact same as the title of the page on the WAI website, make sure it uses double brackets.\
Good Example: `[[Planning Audio and Video Media]]({%raw%}/{%endraw%}media/av/planning/)`\
Bad example: `[Planning Audio and Video Media]({%raw%}/{%endraw%}media/av/planning/)`

- When the link goes to a fragment of a WAI website page, make sure the fragment is preceded by a slash.\
Good example: `[WCAG](/media/av/planning/#wcag-standard)`\
Bad example: `[WCAG](/media/av/planning#wcag-standard)`.

## Update Translations Priorities

Priorities for Translating WAI Resources are listed in the [Step-by-Step Guide to Translating WAI Resources](https://www.w3.org/WAI/about/translating/step-by-step/#priorities) and in Translations Sitemaps.

To update the priorities list:
1. Navigate to the [wai-website-data {% include_cached external.html %}](https://github.com/w3c/wai-website-data) repository.
2. Update the `translations-priorities.yml` file as follows:
- `url` = [`ref`](/writing/frontmatter/#ref) of the resource.
- Arrange lines in the order you want them to appear in the priorities list.
- If you want the subpages of a resource to be displayed, list their `url`s in a `pages` section.

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
   Update language subtag. Example: `/about/translating/sitemaps/sitemap-es/`
   - `ref`\
   Update language subtag. Example: `/about/translating/sitemaps/sitemap-es/`
   - `tlang`\
   Update language subtag.
   - **Note: Do not update `lang` parameter (the language used in the page is still English).**
5. For the new page to appear in the secondary menu, add this new page in `navigation.yml`, in [wai-website-data {% include_cached external.html %}](https://github.com/w3c/wai-website-data) repository.
6. When published, [Translations Sitemaps list](https://www.w3.org/WAI/about/translating/sitemaps/) will automatically be updated.


## "All WAI Translations" Page

This page lists translations of the following items:
- resources on WAI website (automatic)
- video subtitles (automatic)
- accessibility standards (manual)
- stand-alone resources such as the WCAG-EM Report Tool (manual)

Logic is directly coded in [`translations.md` {% include_cached external.html %}](https://github.com/w3c/wai-website/blob/master/translations.md).

### WAI Website Resources

Most translations hosted on WAI website are automatically listed.

**If a translation is not shown**, check the presence of the following parameters in the resource frontmatter:
- [`lang`](/writing/frontmatter/#lang)
- [`ref`](/writing/frontmatter/#ref)
- [`title`](/writing/frontmatter/#title)

**To group parts of a multi-page resource in the list**:

{::nomarkdown}
<ol>
  <li>
{:/}
In the main page of the resource, add and adapt the following parameters in the frontmatter:

{::nomarkdown}
{% include box.html type="start" class="simple" %}
{:/}
```yaml
resource:
  title: "How People with Disabilities Use the Web"
  ref: /people-use-web/
```
{::nomarkdown}
{% include box.html type="end" %}
 </li>
  <li>
{:/}

In other resource pages, add the main page `ref` in the frontmatter:

{::nomarkdown}
{% include box.html type="start" class="simple" %}
{:/}

```yaml
resource:
  ref: /people-use-web/
```

{::nomarkdown}
{% include box.html type="end" %}
  </li>
</ol>
{:/}

### Manually Added Translations

Some stand-alone resources are not automatically listed in [All WAI Translations page](https://www.w3.org/WAI/translations/).

To manually add those translations to the list:
1. Navigate to the [wai-website {% include_cached external.html %}](https://github.com/w3c/wai-website) repository.
2. In `translations.md` frontmatter, update `other_resources` metadata as follows:

{::nomarkdown}
{% include box.html type="start" title="Note" %}
{:/}

In the following list, parameters are highlighted with emoji:
- ❗ = required
- 🌐 = required for translation

{::nomarkdown}
{% include box.html type="end" %}
{:/}

- `lang` ❗\
  Language subtag.

- `title` 🌐\
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
{% include excol.html type="start" id="optional-id" %}

Show example

{% include excol.html type="middle" %}

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
{% include excol.html type="end" %}
{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Accessibility Standards Translations

Accessibility standards translations must be manually listed.

To manually add accessibility standards translations:
1. Navigate to the [wai-website {% include_cached external.html %}](https://github.com/w3c/wai-website) repository.
2. In `translations.md` frontmatter, update `translated_standards` metadata as follows:

{::nomarkdown}
{% include box.html type="start" title="Note" %}
{:/}

In the following list, parameters are highlighted with emoji:
- ❗ = required
- 🌐 = required for translation

{::nomarkdown}
{% include box.html type="end" %}
{:/}

- `lang` ❗\
  Language subtag.

- `title` 🌐 \
  Translated resource title.

- `en_title` ❗\
  Original resource title.

- `url` ❗\
  Absolute link to the resource.

- `type` \
  - `authorized` when Authorized Translation
  - `external` when Unofficial Translation

- `translator` \
  Name of the lead translating organization/individual.

{::nomarkdown}
{% include box.html type="start" title="Example" %}
{:/}
{% include excol.html type="start" id="optional-id" %}

Show example

{% include excol.html type="middle" %}

```yaml
translated_standards:
  - lang: "it"
    docs:
      - title: "Linee guida per l'accessibilità dei contenuti Web (WCAG) 2.2"
        en_title: "Web Content Accessibility Guidelines (WCAG) 2.2"
        url: https://www.w3.org/Translations/WCAG22-it/
        type: authorized
        translator: "International Web Association"
```
{% include excol.html type="end" %}
{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Video Subtitles

Information is pulled from [`video-metadata.yml` {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/video-metadata.yml) file. This includes in particular:
- `name`: translated title of the video, and English title.
- `main-page`: URL of the main page where the video is shown.

Notes:
- Translators are not displayed <mark>(TO DO)</mark>
- "Video Subtitles" heading can be translated when it is added in [`translations.yml` {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/translations.yml). <mark>(TO DO)</mark>

## Technical Details

### Translated Pages in Header

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

The extension looks for a translated version of the linked-to page: that is, a page sharing the same  [`lang`](/writing/frontmatter/#lang) as the _current page_, and the same [`ref`](/writing/frontmatter/#ref) as the _linked-to page_:
- When a translation is found, the link points to the translated page.
- When no translation is found:
  - The link points to the English version;
  - `hreflang` attribute is set to `en`;
  - "(in English)" is added at the end of the link, in the language of the page (if translated in [`translations.yml` {% include_cached external.html %}](https://github.com/w3c/wai-website-data/blob/master/translations.yml))

Link text is defined as follows:
- When single-brackets are used: \
Example: `[Custom link text]({%raw%}/{%endraw%}path/to/filename/)`
  - The custom link text between the brackets is displayed.

- When double-brackets are used:\
Example: `[[Title of WAI Page]]({%raw%}/{%endraw%}path/to/filename/)`
  - The [title](/writing/frontmatter/#title) of the linked-to page is used as link text.\
  This is the title of the translated page if a translation has been found; the title of the English version otherwise.
  - The link text between brackets is ignored.

