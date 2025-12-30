---
title: "The Frontmatter"
redirect_from:
  - /writing/frontmatter/
lang: en
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

You can use different values in the frontmatter to set the metadata of your document.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{% include toc.html %}

In the following list, Frontmatter lines are highlighted with emoji:

- ❗ = Required
- 🌐 = Required for translation interoperability and _should_ be edited by translators.
- 🚸 = Do not use unless absolutely needed. – Frontmatter lines are often used to provide non-standard and limited use-case functionality. If often used to solve a specific use case, it is better to develop that feature properly.

## Title

### `title` ❗🌐 {#title}

A title that describes the page. Will be used as an `h1` and in the HTML `title`.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
title: Accessibility Fundamentals
```

or:

```yaml
title: "Web Accessibility Perspectives: Keyboard Navigation"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Note: When using colons (`:`) in the values of the Frontmatter, using straight (`"`) or single (`'`) quotes is required.

### `title_html` 🌐🚸 {#title_html}

If you _need_ to use HTML in the title (for example to highlight a word, use code markup or force a line break), you can use this line to provide that HTML variant. The `title` will still be used in the HTML title, for example, or when referring to the page using [WAI Markdown links](/writing/wai-markdown/#links).

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
title: The br Element
title_html: "The <code>&lt;br></code> element"
```

or:

```yaml
title: "Web Accessibility Perspectives: Keyboard Navigation"
title_html: "Web Accessibility Perspectives:<br>Keyboard Navigation"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `nav_title` ❗🌐 {#nav_title}

A short title that we’ll use as the navigation text (in the left navigation) in the future. It should be short and succinct.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
nav_title: Fundamentals
```

or:

```yaml
nav_title: Keyboard
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `title_image` 🌐 {#title_image}

To right-float an image on the title, specify it in the title_image line. If the image contains text, it needs to be adjusted to the language of the document.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
title_image: /content-images/wai-media-guide/planning.svg
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `title_icon` 🌐 {#title_icon}

An icon that is displayed left of the `<h1>`.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
title_icon: /tips/img/icons.svg#developing
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `lang` ❗🌐 {#lang}

Specify the language of the current document. Use the two-letter code, and if needed add specifiers by appending them using dashes (`-`). An [up to date list of language codes](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry) can be found here on iana.org. Search for the language and then look for subtag.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
lang: en
```

or:

```yaml
lang: de
```

or:

```yaml
lang: pt-BR
```


{::nomarkdown}
{% include box.html type="end" %}
{:/}

Note: `pt-BR` above means “Portuguese as spoken in Brazil”. We usually only use region identifier when the language is significantly differently interpreted in different regions or when there is a reasonable expectation to get diverging translations.


## `permalink` ❗🌐 {#permalink}

This determines where a page will be put when the site is generated.

For English pages it looks like this: `/path/to/page/`. Note that it
does not use `/WAI/` or `https://www.w3.org/`.

For translations, add the language code to the end of the permalink,
like `/path/to/page/es` for Spanish or `/path/to/page/de` for German

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
permalink: /path/to/page/
```

or:

```yaml
permalink: /path/to/page/es
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Note: By convention, translations do not get a closing forward slash `/`.

## `ref` ❗🌐 {#ref}

The unique identifier (“<em>ref</em>erence”) of a page. It uses the permalink of the English version of the page and is used (among other things) to identify the set of translations of a page.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
lang: en
permalink: /path/to/page/
ref: /path/to/page/
```

or:

```yaml
lang: es
permalink: /path/to/page/es
ref: /path/to/page/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `last_updated` 🌐 {#last_updated}

A ISO date that specifies when the document was last edited in the
format of YYYY-MM-DD (e.g. 2019-03-07 or 2020-11-24).

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
last_updated: 2019-03-07
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Note: We do not version our pages and we also do not keep old versions. Occasionally we use change logs to highlight changes between versions but there is no way translators can tell by looking at the date(s) if there were major or minor changes.

## `translators` 🌐 {#translators}

Every translator is specified by their name in a separate line, like:

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
translators:
- name: "Ms Smith"
- name: "Mr Smith"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

In addition, links can be added (note: there are strict [rules of which
pages to link to](https://www.w3.org/WAI/about/translating/#links)):

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
translators:
- name: "Ms Smith"
  link: "https://smithspersonalhomepage.example.com"
- name: "Mr Smith"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `contributors` 🌐 {#contributors}

Every (translation!) contributor is specified by their name in a separate line, like:

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
contributors:
- name: "Ms Smith"
- name: "Mr Smith"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

In addition, links can be added (note: there are strict [rules of which
pages to link to](https://www.w3.org/WAI/about/translating/#links)):

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
contributors:
- name: "Ms Smith"
  link: "https://smithspersonalhomepage.example.com"
- name: "Mr Smith"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `github` ❗🌐 {#github}

The `github` key defines the repository, branch and path of the document
to provide the fork and edit this document on GitHub links.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
github:
  repository: w3c/wai-repository
  branch: main
  path: 'index.md'
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

For translations, the language abbreviation is put between the filename
and the extension. Examples:

-   `index.md` ➡️ `index.de.md`
-   `this-is-a-longer-name.md` ➡️ `this-is-a-longer-name.el.md`

## `footer` ❗🌐 {#footer}

The footer has information about the document. The content of the footer
needs to be translated.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
footer: >
  <p><strong>Date:</strong> Reviewed 00 Month 202X. Updated 00 Month 202X. First published 00 Month 202X. CHANGELOG.<br>
  History: ...</p>
  <p><strong>Editors:</strong> Name and Name. Contributors: Name, Name, and <a href="https://www.w3.org/WAI/EO/participants">EOWG Participants</a>. ACKNOWLEDGEMENTS lists contributors. Previous editors: Name; previous contributors: Name.</p>
  <p>Developed [by|with input from]  the Education and Outreach Working Group (<a href="http://www.w3.org/WAI/EO/">EOWG</a>), with the <a href="@@">Acme Task Force</a>. Previously developed  as part of the <a href="@@">Acme Project</a> funded by the Money Org. Updated as part of the <a href="@@">Acme Project</a> funded by the Money Org.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Notes" class="simple notes" %}
{:/}

*  Developer, Project Lead — sometimes in addition to "Editors" we'll have "Developers" or such, like [Laws and Policies](https://www.w3.org/WAI/policies/#wai-page-footer) and [WCAG-EM Report Tool](https://www.w3.org/WAI/eval/report-tool/#/).
*  History — rarely is this needed. Occasionally it's useful, like for [Easy Checks](https://www.w3.org/WAI/test-evaluate/preliminary/#wai-page-footer).
*  Name — generally we link W3C staff to their people page. And do not link others.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `changelog`

The changelog attribute uses a reference to another document and replaces the token CHANGELOG in the footer text with a link to the changelog.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

The code:

```yaml
changelog: /media/av/changelog/
footer: >
  <p>Footer Content as HTML. CHANGELOG.</p>
```

produces:

```html
<p>Footer Content as HTML. <a href="/media/av/changelog/">Changelog</a>.</p>
```

The URL gets properly adapted to the deployment environment.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `acknowledgements`

The acknowledgements attribute uses a reference to another document and replaces the token ACKNOWLEDGEMENTS in the footer text with a link to the acknowledgements.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

The code:

```yaml
acknowledgements: /media/av/acknowledgements/
footer: >
  <p>Footer Content as HTML. ACKNOWLEDGEMENTS.</p>
```

produces:

```html
<p>Footer Content as HTML. <a href="/media/av/acknowledgements/">Acknowledgements</a>.</p>
```

The URL gets properly adapted to the deployment environment.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `license`

Define a license for the content. If no license is set, the [W3C Document License](https://https://w3.org/WAI/about/using-wai-material/#official-w3c-document-license) is assumed. Specify `creative-commons` to output a paragraph in the footer area that links to the Creative Commons license and sets the metadata of the page appropriately.

*  Creative Commons (`creative-commons`) — include for resources we specifically want people to adapt for their environment, such as sample presentations, curricula, business case. For now, do not include on other things.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

The code:

```yaml
license: creative-commons
footer: >
  <p>Footer Content as HTML.</p>
```

produces:

```html
<p>Footer Content as HTML.</p>
<p>{% include_cached icon.html name="creative-commons" %} This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</p>
```

The URL gets properly adapted to the deployment environment.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `navigation`

Navigation specifies next and previous pages (by their `ref` <em>ref</em>erence), so that previous/next arrows can be shown:

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
navigation:
  previous: /path/to/previous/file/
  next: /path/to/next/file/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `class`

Sometimes it is useful to specify a class on the body element. (Note that the page automatically creates a class with the name of the current page on the body element.)

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
class: tight-page
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

* `tight-page`: Uses less space above `h2` headings, mainly used on for overview-ish pages.

## `feedbackmail`

In the "Help improve this page" box, the default e-mail address (in text and buttons) is wai-eo-editors@w3.org<br>
To change that, use `feedbackmail`.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
feedbackmail: wai@w3.org
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `footnotestitle`

The title used as a heading of the Footnotes list box. Falls back to ”Footnotes”.

## SEO & Social Media Metadata {#seo-sm}

Most of the SEO/SM metadata is provided by the [Jekyll SEO Tag plugin](https://github.com/jekyll/jekyll-seo-tag). We provide sensible metadata by default, however two lines should be added to the Frontmatter to customize Social Media preview:

### `description` 🌐 {#description}

Provide a short description of what the page is all about.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
description: The rationale for organizations to address accessibility. It includes tangible and intangible benefits, and the risks of not addressing accessibility adequately.
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### `image` 🌐 {#image}

Provide a short social media sharing image. This image might also be re-used when linking to a page from other sections of the website, for example as a home page teaser[^1].

[^1]: Not yet implemented.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example simple" %}
{:/}

```yaml
image: /content-images/wai-bcase/social.png
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
