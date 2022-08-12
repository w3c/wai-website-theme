---
title: "[Draft] Minimal Header and 'standalone_resource' Layout"
permalink: /writing/standalone-resources/
ref: /writing/standalone-resources/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-standalone-resources.md
---

**_Note: We are updating this documentation. Your patience is appreciated.<br>Please send any questions to Steve and Shawn.<br>Feel free to submit a Pull Request for improvements to this documentation. Thanks!_**

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

The minimal header component and the 'standalone_resource' layout are for tools and sets of documents that do not use the main WAI website header and navigation.

Resources that are integrated using the WAI website theme can use the [minimal header component](https://wai-website-theme.netlify.app/components/minimal-header/) on its own, but are more likely to use the extended features of 'standalone_resource' layout. The layout uses the minimal header and also provides specific types of navigation including a 'pager', document type in h1, and a page contents.

Tools that are not integrated provide their own header that looks identical to the to the minimal header, but usually with "tabs" for navigation.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Background and what's what

The main WAI website header and navigation takes up a fair bit of screen real estate and adds some visual complexity to pages. We don't want that for some WAI resources; for example, the [WCAG-EM Report Tool](https://www.w3.org/WAI/eval/report-tool/) and [Supplemental Guidance to WCAG 2](https://www.w3.org/WAI/WCAG2/supplemental/patterns/o1p02-familiar-design/).

A few things evolved in ways that make the current naming not aligned with reality. We decided not to further change the names of existing components and layouts. There are two related things:
1. minimal header component
2. standalone_resource layout &mdash; which is actually for things that **are** integrated into the WAI website theme

## Resources that are integrated

Resources that are fully integrated into the WAI website and use the WAI theme, use the 'stand-alone resources' layout. This is currently used for document sets, such as Supplemental Guidance to WCAG, and interactive Lists, such as _(coming in 2022)_.

With the layout, you can:
* specify links to an About page and an Index page
* enable an automatically-generated "Page Contents" (TOC)
* provide data for the pager controls (up, previous, next)

These are all configured declaratively using page variables in the usual Jekyll way. They can be specified per page in the frontmatter, or across pages in the `_config.yml` file. (See  [Jekyll - Front Matter Defaults](https://jekyllrb.com/docs/configuration/front-matter-defaults/)). Specifying them in the config file is usually best.

### Specify the 'stand-alone resources' layout

```yaml
layout: standalone_resource
```

Hint: You can use nested layouts to save repetition.

### Header, name of set of resources and tagline

Required: The name of the set of documents.

Optional: A subtitle or tagline.

```yaml
standalone_resource_header:
  title: Supplemental Guidance to WCAG 2
  subtitle: Additional ways to improve accessibility, not required to meet WCAG
```
### Navigation

### About page link in header, required

```yml
standalone_resource_header:
  link:
    ref: /WCAG2/supplemental/about/
    title: About Supplemental Guidance and WCAG
```

### Index page link in navigation, required

The icon is optional.

```yml
standalone_resource_pager:
  icon: /content-images/wai-wcag-supplemental/brain.svg
  name: All Cognitive
  ref: /WCAG2/supplemental/#cognitiveaccessibilityguidance```
```

#### Pager in navigation, optional

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

## Tools that are _not_ integrated

Some tools &mdash; currently WCAG-EM Report Tool and ATAG Report Tool &mdash; do not use the WAI website theme. Instead they are implemented in other technologies and linked into the WAI website via W3C redirects. They use the Tool version of the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/master/_includes/minimal-header.html) and use the theme styles, including those for the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/master/_components/minimal-header.css) for visual consistency with the WAI website.

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
