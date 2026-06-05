---
title: "Frontmatter"
nav_title: "Frontmatter"
last_updated: 2025-11-21
redirect_from:
  - /writing/frontmatter/
inline_css: |
  pre.highlight{
    background: #FFF;
    padding: 1rem 1.5rem;
    border: 1px solid var(--line-grey);
  }
---

{::nomarkdown}
{% include box.html type="start" title="Introduction" class="" %}
{:/}

Use frontmatter variables to set the metadata of your document.

Required variables are marked with an asterisk (*).\
Experimental (not widely used) variables are marked with a 🧪 emoji.

Generic information can be found on [Front Matter - Jekyll Documentation {% include_cached external.html %}](https://jekyllrb.com/docs/front-matter/) page.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## `acknowledgements` {#acknowledgements}

(`string`) Path to an Acknowledgements page. The token `ACKNOWLEDGEMENTS` in the [`footer`](#footer) variable is replaced with this value. The URL gets properly adapted to the deployment environment.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

The code:

```yaml
acknowledgements: /media/av/acknowledgements/
footer: >
  <p>Footer content. ACKNOWLEDGEMENTS.</p>
```

produces on the live website:

```html
<p>Footer content. <a href="/WAI/media/av/acknowledgements/">Acknowledgements</a>.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `class` {#class}

(`string`) Specifies a class on the `body` element.\
(Note that the page automatically creates a class with the name of the current page on the body element.)

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
class: tight-page
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Common value:
* `tight-page`: Uses less space above `h2` headings, mainly used on for overview-ish pages.

## `contributors` {#contributors}

(`map array`) A list of people who contributed to the translation.

Every (translation) contributor is specified by their name in a separate line, like:

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
contributors:
- name: "Jane Doe"
- name: "John Doe"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

In addition, links can be added (note: there are strict [rules of which
pages to link to](https://www.w3.org/WAI/about/translating/#links)):

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
contributors:
- name: "Jane Doe"
  link: "https://doespersonalhomepage.example.com"
- name: "John Doe"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Following keys are available:

`name` *
: (`string`) Translator name.

`link`
: (`string`) Link to the translator personal page.

`org`
: (`string`) Name of the translator organization.

`orglink`
: (`string`) Link to the organization website.

## `custom_changelog` {#changelog}

(`string`) Path to a custom Changelog page. If not set, `<ref>/changelog/` is used, if such page exists.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

Example 1:

```yaml
ref: /media/av/planning/
custom_changelog: /media/av/changelog/
```

makes the "Latest changes" link point to `/media/av/changelog/` page.

Example 2:

```yaml
ref: /media/av/planning/
# No changelog variable
```

makes the "Latest changes" link point to `/media/av/planning/changelog/`, if such page exists.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `date` {#date}

{::nomarkdown}
{% include box.html type="start" title="Note" class="simple" %}
{:/}

This variable is only used for news posts.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


(`string`) The publication date of a news post. Format is based on [ISO 8601 {% include_cached external.html %}](https://www.iso.org/iso-8601-date-and-time-format.html): `YYYY-MM-DD`.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
date: 2024-10-01
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


## `description` {#description}

Most of the SEO/social media metadata is provided by the [Jekyll SEO Tag plugin {% include_cached external.html %}](https://github.com/jekyll/jekyll-seo-tag). We provide sensible metadata by default. However, this line should be added to the frontmatter to customize social media preview.

(`string`) Provides a short description of what the page is all about.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
description: The rationale for organizations to address accessibility. It includes tangible and intangible benefits, and the risks of not addressing accessibility adequately.
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `feedbackmail` {#feedbackmail}

(`string`) Customs the e-mail address used in the "Help improve this page" box (in text and buttons). Fallback value is `wai@w3.org`.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
feedbackmail: public-wcag-act@w3.org
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `first_published` {#first_published}

(`string`) The date that the page was first published. Format is plain text.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
first_published: "March 2024"
```

or

```yaml
first_published: "9 December 2009"
```

or

```yaml
first_published: "as “Conformance Evaluation of Web Sites for Accessibility” in September 2005"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `footer` \* {#footer}

(`string`) Footer of the document, written in HTML.

You can use `>` or `|` to support multiline:
- `|` keeps the newlines
- `>` replaces newlines with a space character.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
footer: >
  <p>First published 10 October 2023.<br />
    History: ...</p>
  <p><strong>Editors:</strong> Name and Name. Contributors: Name, Name. ACKNOWLEDGEMENTS lists contributors. Previous editors: Name; previous contributors: Name.</p>
  <p>Previously developed  as part of the <a href="@@">Acme Project</a> funded by the Sponsor Org. Updated as part of the <a href="@@">Acme Project</a> funded by the Sponsor Org.</p>
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

## `footnotestitle`

(`string`) Customs heading of the Footnotes list box. Fallback value is `Footnotes`.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
footnotestitle: Resources
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `github` {#github}

(`map`) GitHub related information. May be used to generate the "Fork and edit on GitHub" and "New GitHub issue" links in the “Help improve this page” box.

`repository`, `branch` and `path` are **not** required for pages developed in the `wai-website` repository.

Following keys are available:

`label`
: (`string`) GitHub label to apply when a new issue is created from this page, prepended with `wai-`.

`repository`
: (`string`) GitHub repository. If not set, `repository` value in `config.yml` is used.

`branch`
: (`string`) Branch of the document. If not set, `branch` value in `config.yml` is used.

`path`
: (`string`) Path to the document. Programmatically inferred in `wai-website` repository.

For translations, the language tag is put between the filename and the extension. Examples:
- `index.md` ➡️ `index.de.md`
- `this-is-a-longer-name.md` ➡️ `this-is-a-longer-name.el.md`

{::nomarkdown}
{% include box.html type="start" title="Example: Page developed in `wai-website` repository" class="example" %}
{:/}

```yaml
github:
  label: wai-tips
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Example: Page developed outside `wai-website` repository" class="example" %}
{:/}

```yaml
github:
  label: wai-resource-name
  repository: w3c/wai-repository
  branch: main
  path: 'index.md'
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `image` {#image}

Most of the SEO/social media metadata is provided by the [Jekyll SEO Tag plugin {% include_cached external.html %}](https://github.com/jekyll/jekyll-seo-tag). We provide sensible metadata by default. However, this line should be added to the frontmatter to customize social media preview.

(`string`) A short social media sharing image. This image might also be re-used when linking to a page from other sections of the website, for example as a home page teaser[^1].

[^1]: Not yet implemented.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
image: /content-images/business-case/social.png
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `inline_css` {#inline_css}

{::nomarkdown}
{% include box.html type="start" title="Notice" icon="warning" %}
{:/}

Do not use this variable unless absolutely needed. Contact the WAI website managers to consider adding new styles to the WAI website theme instead.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

(`string`) Adds custom CSS to the document. Use `|` to support multiline.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
inline_css: |
  .hint {opacity: .9;}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `lang` \* {#lang}

(`string`) The language tag of the current document.

Where possible, use a single language subtag from [IANA Language Subtag Registry {% include_cached external.html %}](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

We usually only add region/script subtags when the language is significantly differently interpreted in different regions or when there is a reasonable expectation to get diverging translations. More info on [Choosing a Language Tag](https://www.w3.org/International/questions/qa-choosing-language-tags).

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
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

## `last_reviewed` {#last_reviewed}

(`string`) The date that the page was last checked for accuracy. Format is based on [ISO 8601 {% include_cached external.html %}](https://www.iso.org/iso-8601-date-and-time-format.html): `YYYY-MM-DD`.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
last_reviewed: 2024-10-01
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `last_updated` \* {#last_updated}

(`string`) The date that the page was last substantively updated. Format is based on [ISO 8601 {% include_cached external.html %}](https://www.iso.org/iso-8601-date-and-time-format.html): `YYYY-MM-DD`.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
last_updated: 2024-09-29
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `layout` {#layout}

{::nomarkdown}
{% include box.html type="start" title="Notice" icon="warning" %}
{:/}

Contact the WAI website managers prior to applying a custom layout.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

(`string`) Applies a custom layout to the page. Generally fallbacks to `default`.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
  layout: minimal
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Frequently used values:
- `act_implementation`
- `home`
- `minimal`
- `overview`
- `standalone_resource`
- `sidenav`

## `license` {#license}

(`string`) Defines a license for the content. If not set, the [W3C Document License](https://w3.org/WAI/about/using-wai-material/#official-w3c-document-license) is assumed.

Possible value:
- `creative-commons`: outputs a paragraph in the footer area that links to the Creative Commons license and sets the metadata of the page appropriately.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

The code:

```yaml
license: creative-commons
footer: >
  <p>Footer content.</p>
```

produces:

```html
<p>Footer content.</p>
<p>{% include_cached icon.html name="creative-commons" %} This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `metafooter` {#metafooter}

(`boolean`) Use frontmatter variables to build the page footer, instead of the the [`footer`](#footer) value. Only [Tutorials](https://www.w3.org/WAI/tutorials/) pages use the `metafooter` for now.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
metafooter: true
editors:
- Eric Eggert: "https://www.w3.org/People/yatil/"
- Shadi Abou-Zahra: "https://www.w3.org/People/shadi/"
update_editors:
- Brian Elton
contributing_participants:
- see <a href="/WAI/tutorials/acknowledgements/">Acknowledgements</a>
support: Developed by the Education and Outreach Working Group (<a href="https://www.w3.org/groups/wg/eowg">EOWG</a>). Developed with support from the <a href="https://www.w3.org/WAI/ACT/">WAI-ACT project</a>, co-funded by the <strong>European Commission <abbr title="Information Society Technologies">IST</abbr> Programme</strong>.
```
{::nomarkdown}
{% include box.html type="end" %}
{:/}

If `metafooter` is set to `true`, the footer will be built using the following variables:

### `editors` {#editors}

(`string array`) list of editors.

### `update_editors` {#update_editors}

(`string array`) list of update editors.

### `contributing_participants` {#contributing_participants}

(`string array`) Contributing participants. A link to an "Acknowledgements" page is often used.

### `support` {#support}

(`array`) Additional information about participants, sponsoring, funding projects, etc.

## `navigation` {#navigation}

(`map`) Specifies next and previous pages (by their [`ref`](#ref) reference), so that previous/next arrows can be shown.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
navigation:
  previous: /media/av/users-orgs/
  next: /media/av/av-content/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Following keys are available:

`previous`
: (`string`) [`ref`](#ref) of the previous page

`next`
: (`string`) [`ref`](#ref) of the next page

## `nav_title` * 🧪 {#nav_title}

(`string`) A short title that we will use as the navigation text (in the left navigation) in the future. It should be short and succinct.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
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

## `parent` {#parent}

(`string`) Used in header and secondarynav.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
  parent: /fundamentals/accessibility-principles/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `permalink` \* {#permalink}

(`string`) Output path of a page. The URL gets properly adapted to the deployment environment.

Note: Collection pages generally have a default permalink, set in the `_config.yml` configuration file.

For translations, add the language tag to the end of the permalink, without a closing slash (`/`), like `/path/to/page/es`

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
permalink: /standards-guidelines/wcag/
```

or:

```yaml
permalink: /standards-guidelines/wcag/es
```

Note that we do not use `/WAI/` or `https://www.w3.org/`.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `ref` \* {#ref}

(`string`) Unique identifier (“<em>ref</em>erence”) of a page. Must match the permalink of the English version of the page. Is used (among other things) to identify the set of translations of a page.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
lang: en
permalink: /standards-guidelines/wcag/
ref: /standards-guidelines/wcag/
```

or:

```yaml
lang: es
permalink: /standards-guidelines/wcag/es
ref: /standards-guidelines/wcag/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `resource` {#resource}

(`map`) Specifies that the current page is part of a multi-page resource.

Usage:
- On resource subpages, the resource homepage is displayed underneath the `h1` element.\
  Example: [Writing for Web Accessibility](https://www.w3.org/WAI/tips/writing/).
- In [All WAI translations](https://www.w3.org/WAI/translations/) page, translations are grouped by resource.

Following keys are available:

`ref` *
: (`string`) [`ref`](#ref) of the resource homepage.

`title`
: (`string`) Resource title to display. Only use this key on the resource homepage.

{::nomarkdown}
{% include box.html type="start" title="Example: Resource subpage" class="example" %}
{:/}

```yaml
resource:
  ref: /tips/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Example: Resource homepage" class="example" %}
{:/}

```yaml
resource:
  title: "Tips for Getting Started"
  ref: /tips/
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `title` \* {#title}

(`string`) A title that describes the page. Used as an `h1` and in the HTML `title` tag.

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
{:/}

```yaml
title: Accessibility Fundamentals
```

or:

```yaml
title: "Web Accessibility Perspectives: Keyboard Navigation"
```

Note: when using colons (`:`) in the values of the frontmatter, using straight double (`"`) or single (`'`) quotes is required.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `title_html` {#title_html}

{::nomarkdown}
{% include box.html type="start" title="Notice" icon="warning" %}
{:/}

Do not use this variable unless absolutely needed.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

(`string`) If you _need_ to use HTML in the title (for example to highlight a word, use code markup or force a line break), you can use this line to provide that HTML variant.

The `title` value will still be used in the HTML title, or when referring to the page using [WAI Markdown links](/writing/wai-markdown/#links).

{::nomarkdown}
{% include box.html type="start" title="Examples" class="example" %}
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

## `title_icon` {#title_icon}

(`string`) A path to an icon image. If set, an icon is displayed on the left of the `h1` heading.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

In [Developing for Web Accessibility](https://www.w3.org/WAI/tips/developing/):

```yaml
title_icon: /content-images/tips/icons.svg#developing
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `title_image` {#title_image}

(`string`) A path to an image. If set, an image is displayed on the right of the `h1` heading.\
If the image contains text, it needs to be adjusted to the language of the document.

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

In [Planning Audio and Video Media](https://www.w3.org/WAI/media/av/planning/):

```yaml
title_image: /content-images/media-guide/planning.svg
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `tlang` {#tlang}

{::nomarkdown}
{% include box.html type="start" title="Note" class="simple" %}
{:/}

This variable is only used in translation sitemaps.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

(`string`) The language tag of the current translation sitemap.

{::nomarkdown}
{% include box.html type="start" title="Example: French translation sitemap" class="example" %}
{:/}

```yaml
tlang: fr
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


## `translation` {#translation}

(`map`) Key information about a translation.

All translations must have a `translation` variable.

Following keys are available:

`last_updated` *
: (`string`) The date the translation was last updated. Format is based on [ISO 8601 {% include_cached external.html %}](https://www.iso.org/iso-8601-date-and-time-format.html): `YYYY-MM-DD`.

`outdated`
: (`boolean`) When set to `true`, marks the translation as outdated.

`draft`
: (`boolean`) When set to `true`, marks the translation as draft.

{::nomarkdown}
{% include box.html type="start" title="Example: Up-to-date translation" class="example" %}
{:/}

```yaml
translation:
  last_updated: 2024-10-14
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Example: Outdated translation" class="example" %}
{:/}

```yaml
translation:
  outdated: true
  last_updated: 2022-02-22
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Example: Draft and outdated translation" class="example" %}
{:/}

```yaml
translation:
  draft: true
  outdated: true
  last_updated: 2022-02-22
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## `translators` {#translators}

(`map array`) A list of the people who created the translation.

All translation pages should have a translators list.

Every translator is specified by their name in a separate line, like:

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
translators:
- name: "Jane Doe"
- name: "John Doe"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

In addition, links can be added (note: there are strict [rules of which
pages to link to](https://www.w3.org/WAI/about/translating/#links)):

{::nomarkdown}
{% include box.html type="start" title="Example" class="example" %}
{:/}

```yaml
translators:
- name: "Jane Doe"
  link: "https://doespersonalhomepage.example.com"
- name: "John Doe"
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

Following keys are available:

`name` * (`string`)
: Translator name.

`link` (`string`)
: Link to the translator personal page.

`org` (`string`)
: Name of the translator organization.

`orglink` (`string`)
: Link to the organization website.
