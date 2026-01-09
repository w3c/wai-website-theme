---
title: "Stand-alone Resource Layout"
lang: en
doc-note-type: draft
template_includes:
  - head
  - body-class
  - minimal-header
  - icon.html
  - prevnext-navigation
  - prevnext-order
  - feedback-box
  - backtotop
  - footer
template_frontmatter:
  - lang
  - ref
  - type_of_guidance
  - proposed
  - title
  - external_css
  - ext_css
  - inline_css
  - image
  - collection
  - doc-note-type
  - class
  - standalone_resource_header
  - standalone_resource_doc_name
  - standalone_resource_pager
  - permalink
  - standalone_resource_nav_links
  - sidebar
  - title_html
  - navigation
  - order
---

{::nomarkdown}
{% include box.html type="start" title="Summary" %}
{:/}

The 'standalone_resource' layout using the minimal header component is designed for tools and sets of documents that do not require the full WAI website layout. In particular the header and navigation take up less space.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: standalone_resource
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

- [ARIA Authoring Practices Guide (APG)](https://www.w3.org/WAI/ARIA/apg/)
- [Supplemental Guidance to WCAG 2](https://www.w3.org/WAI/WCAG2/supplemental/)
- [ACT Rules](https://www.w3.org/WAI/standards-guidelines/act/rules/)
- [WCAG-EM Report Tool](https://www.w3.org/WAI/eval/report-tool/)
- [ATAG Report Tool](https://www.w3.org/WAI/atag/report-tool/)

## Examples

- ACT Rules: [Open the ACT Rules example in a new tab](/templates/standalone-resource/demo-act-rules/){:target="_blank"}
- COGA: [Open the COGA example in a new tab](/templates/standalone-resource/demo-coga/){:target="_blank"}

## Includes used

{%- if page.template_includes.size > 0 %}{% assign template_includes = page.template_includes | sort %}{% endif -%}
{% for include in template_includes %}
- [`{{ include | append: ".html" }}`](https://github.com/w3c/wai-website-theme/tree/main/_includes/{{ include | append: ".html" }})
{% endfor %}

## Frontmatter parameters used

{%- if page.template_frontmatter.size > 0 %}{% assign template_frontmatter = page.template_frontmatter | sort %}{% endif -%}
{% for parameter in template_frontmatter %}
- [`{{ parameter }}`](/fundamentals/frontmatter/#{{ parameter }})
{% endfor %}

## Background and what's what

The WAI website header and navigation provided in the default theme layout take up a fair bit of screen real estate and add some visual complexity to pages. Some WAI resources use the simplified header and navigation of the standalone_resource layout; for example, the [ARIA Authoring Practices Guide (APG)](https://www.w3.org/WAI/ARIA/apg/) and [Supplemental Guidance to WCAG 2](https://www.w3.org/WAI/WCAG2/supplemental/patterns/o1p02-familiar-design/).

The standalone_resource layout uses the Minimal Header component and also provides options for simplified navigation

## Resources using the WAI Website Theme

Resources that are fully integrated into the WAI website use the WAI theme, that provides page layouts and components. These can simply use the 'stand-alone resources' layout instead of the default to provide an alternative header and navigation

With this layout, you can:

* use a simple tab like navigation
* provide data for a pager control navigation (up, previous, next)
* enable an automatically-generated "Page Contents" (TOC)

These are all configured declaratively using page variables in the usual Jekyll way. They can be specified per page in the frontmatter, or across pages in the `_config.yml` file. (See  [Jekyll - Front Matter Defaults](https://jekyllrb.com/docs/configuration/front-matter-defaults/)). Specifying them in the config file is usually best.

### Header content

See [Supplemental Guidance](https://www.w3.org/WAI/WCAG2/supplemental/) which uses all the features

Required: title
Optional: title-ref - for pager style nav this appears on the first item in the nav
Required: subtitle
Optional: link

```yaml
standalone_resource_header:
  title: Supplemental Guidance to WCAG 2
  title-ref: /WCAG2/supplemental/#-cognitiveaccessibilityguidance
  subtitle: Additional ways to improve accessibility, not required to meet WCAG
  link:
    ref: /WCAG2/supplemental/about/
    title: About Supplemental Guidance and WCAG
```

### Navigation

Two style are supported: Tab and pager

#### Tab style

As used in the [ARIA Authoring Practices Guide](https://www.w3.org/WAI/ARIA/apg/):

```yml
standalone_resource_nav_links:
  - name: APG Home
    ref: /ARIA/apg/
  - name: Patterns
    ref: /ARIA/apg/patterns/
  - name: Practices
    ref: /ARIA/apg/practices/
  - name: Index
    ref: /ARIA/apg/example-index/
  - name: About
    ref: /ARIA/apg/about/
```

#### Pager style

As used in the [Supplemental Guidance](https://www.w3.org/WAI/WCAG2/supplemental/):

All required except the icon is optional.

```yml
standalone_resource_pager:
  icon: /content-images/wai-wcag-supplemental/brain.svg
  name: All Cognitive
  ref: /WCAG2/supplemental/#-cognitiveaccessibilityguidance
```

The pager provides 'up', 'next' and 'previous' links for navigation within the set of documents. It is data driven, using a set of Jekyll arrays to provide the names and URLs.

To use it, specify an include file that provides the arrays.

```yaml
standalone_resource_pager:
  include: dg-pager.liquid
```

For example: Here's the code from at the end of the Supplemental Guidance pager file [dg-pager.liquid](https://github.com/w3c/wai-wcag-supplemental/blob/main/_includes/dg-pager.liquid):

{% raw %}

```liquid
{% comment %}
Set up tuples for pager
{% endcomment %}
{% if is_pattern %}
    {% assign item_type = "Pattern" %}
    {% assign context_type = "Objective" %}
{% else %}
    {% assign item_type = "Objective" %}
{% endif %}
{% if prev_item %}
    {% assign prev = "Previous " | append: item_type | append: "??" | append: prev_item.url | append: "??" | append: prev_item.title | split: "??" %}
{% endif %}
{% if next_item %}
    {% assign next = "Next " | append: item_type | append: "??" | append: next_item.url | append: "??" | append: next_item.title | split: "??" %}
{% endif %}
{% if context_item %}
    {% assign context = context_type | append: "??" | append: context_item.url | append: "??" | append: context_item.title | split: "??" %}
{% endif %}
{% endif %}
```

{% endraw %}

@@ TODO: explain this

### Type of document (guidance) in h1, optional

Most document sets have different types of documents, for example the cognitive guidance has 'Objectives' and 'Design Patterns'. The type of document is included at the beginning of the h1. It can also be used for other logic purposes in the resource pages.

Provide the type_of_guidance and if it is proposed.

```yaml
type_of_guidance: Technique
```

In addition, if defined, "proposed" is use as a prefix.

```yaml
proposed: true
```

### Generated Page Contents, optional

A right-hand sidebar can be enabled that provides navigation to headings. By default, it includes h2. You can set it to include other heading levels. In addition to the the sidebar menu, it adds the fragment id's for the URLs to the headings.

```yaml
sidebar: true
```

## Tools that do not use the WAI Website Theme

Some tools &mdash; currently WCAG-EM Report Tool and ATAG Report Tool &mdash; do not use the WAI website theme. Instead they are implemented in other technologies and linked into the WAI website via W3C redirects. They use the Tool version of the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/main/_includes/minimal-header.html) and use the theme styles, including those for the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/main/_components/minimal-header.css) for visual consistency with the WAI website.

### Tool navigation, depreciated

For tools that have all pages in the navigation area, a set of tab-like links are created thus:

```yaml
standalone_resource_nav_links:
  - name: Tab1
    ref: /path/to/page1
  - name: Tab2
    ref: /path/to/page2
```

This is not compatible with the navigation described above.

## Examples

- Document set integrated, using standalone-resource: [Cognitive Accessibility Design Pattern in Supplemental Guidance to WCAG 2](https://www.w3.org/WAI/WCAG2/supplemental/patterns/o1p02-familiar-design/)
- Tool not integrated, using minimal header: [WCAG-EM Report Tool](https://www.w3.org/WAI/eval/report-tool/)
