---
title: "Stand-alone Resources and the Minimal header"
permalink: /writing/standalone-resources/
ref: /writing/standalone-resources/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-standalone-resources.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

At WAI, we sometimes have both sets of documents and interactive app-like tools that do not require the full WAI website wrapper.
In particular, the full header header and side navigation are not required.

Document sets are referred to as "Standalone Resources" and are commonly “supporting documents” for our accessibility standards, like the Techniques and Understanding documents for the Web Content Accessibility Guidelines (WCAG). These contain a significant number of pages and tend not to not need full navigation. They do however, have an Index Home page and an About page.
In addition, a pager-style navigation for "next" and "previous" page is often required, plus an in-page header navigation menu.

In comparison, tools use a much simpler header and navigation menu, the rest of the page being the iteractive app.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{% include toc.html %}

## Tools minimal header

There is flexibility in how tools are implemented. Several do not use the WAI Website Theme at all. Rather, they are implemented in other technologies and linked into the WAI website via W3C redirects given them the correct URL. They do however, reproduce the Tool version of the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/master/_includes/minimal-header.html) and use the Theme styles, including those for the [Minimal Header](https://github.com/w3c/wai-website-theme/blob/master/_components/minimal-header.css) for visual consistency with the WAI website.

## Using the stand-alone resource layout

This is for documentations sets and tools that are fully integrated into the WAI website and use the WAI Theme.
The stand-alone resource layoute provides several features common to document sets.
In particular, you can declaratively specify an About page, an Index page, enable an automatic in-page side menu for H2 navigation
and also provide data for the pager controls (next, previous and up).

These are all configured using page variable in the usual Jekyll way. As usual thy can be specified perpage in the frontmatter, on accros pages in the `_config.yml` file. See  [Jekyll - Front Matter Defaults](https://jekyllrb.com/docs/configuration/front-matter-defaults/)). The later is usually most effective.

## Specifying the “stand-alone resources” layout

```yaml
layout: standalone_resource
```

Hint: you can use nested layouts to save repetition.

## Header

### Page Title

The name of the set of documents must be provided. A longer subtitle (or tagline) can optionally be given.

```yaml
standalone_resource_header:
  title: Supplemental Guidance to WCAG 2
  subtitle: Additional ways to improve accessibility, not required to meet WCAG```yaml
```
### Navigation

There are two styles of Navigation. For Tools a set of Tab-like links are ceated thus:

```yaml
standalone_resource_nav_links:
  - name: Tab1
    ref: /path/to/page1
  - name: Tab2
    ref: /path/to/page2
```
For document sets use the follow style which provides and about link in the header and and icon and index link in the pager row
(even if there is no pager).

```yml
standalone_resource_header:
  link:
    ref: /WCAG2/supplemental/about/
    title: About Supplemental Guidance and WCAG
standalone_resource_pager:
  icon: /content-images/wai-wcag-supplemental/brain.svg
  name: All Cognitive
  ref: /WCAG2/supplemental/#cognitiveaccessibilityguidance```
```

## Type of document

For document sets using `standalone-resource` that contain different categories, this is displayed above the title of the document on the page.
It can also be used for other logic purposes in the resource pages

```yaml
type_of_guidance: Technique
```

In addition, if defined, "proposed" is use as a prefix.

```yaml
proposed: true
```

## Pager

The is optional and provides 'up', 'next' and 'previous' links for navigation within the set of files.
It is data driven, using a set of Jekyll arrays to provide the names and URLs. To use, it specify an include file that provides the arrays.

```yaml
standalone_resource_pager:
  include: dg-pager.liquid
```

Here's the code from at the end of the Supplemental Guidance pager file [dg-pager.liquid](https://github.com/w3c/wai-wcag-supplemental/blob/main/_includes/dg-pager.liquid):

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

TODO: explain this

## Automatic H2 heading navigation

A right-hand sidebar can be enabled that provides navigation to each H2 heading.
In additio not the sidebar menu it adds the fragment id's for the URLs to the headings.

```yaml
sidebar: true
```


## Examples

- Using the tools hminal header: [WCAG-EM Report Tool](https://www.w3.org/WAI/eval/report-tool/)
- Using standalone-resource: [Cognitive Accessibility Design Pattern in Supplemental Guidance to WCAG 2](https://www.w3.org/WAI/WCAG2/supplemental/patterns/o1p02-familiar-design/)
