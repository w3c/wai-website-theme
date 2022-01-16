---
title: "Stand-alone Resources"
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

At WAI, we sometimes have (sets of) documents that do not require the full WAI website wrapper, but we want them to look like WAI documents. 

These are commonly “supporting documents” for our accessibility standards, like the Techniques and Understanding documents for the Web Content Accessibility Guidelines (WCAG).

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{% include toc.html %}

## How to use the “stand-alone resources” layout

In the document's front matter, add:

```yaml
layout: standalone_resource
```

Instead of adding to each individual document, you can also add it globally in the repository's `_config.yml` under `defaults` ([example](https://github.com/w3c/wai-coga-design-guide/blob/master/_config.yml#L55); see also [Jekyll - Front Matter Defaults](https://jekyllrb.com/docs/configuration/front-matter-defaults/)). 

## Other front matter

Stand-alone resources also have a couple of specific front matter settings.

### Navigation

To add links to the top navigation, add the `name` and `ref` attributes for each link in a `standalone_resource_nav_links`

```yaml
standalone_resource_nav_links:
  - name: All Objectives
    ref: /objectives
  - name: All Patterns
    ref: /patterns
  - name: About this Design Guide
    ref: /about
```

### Name for the set of documents

The name of the set of documents can be set in `standalone_resource_doc_name`. For instance, for WCAG 2.1 Techniques, use: 

```yaml
standalone_resource_doc_name: WCAG 2.1 Techniques
```

Some documents may have a long name which needs to be separated into two parts. Use `standalone_resource_doc_name_sub`, to specify text that can be displayed smaller underneath.

```yaml
standalone_resource_doc_name: "Design Guide"
standalone_resource_doc_name_sub: "for People with Cognitive Disabilities and Learning Difficulties"
```

### Name of the type of document

To specify the type of guidance, for instance “Technique”, “ACT Rule” or “Design Pattern”, use: 

```yaml
type_of_guidance: Technique
```

This is displayed above the title of the document, and used to decide which sidebar to use.

## Different sidebars 

The supporting document template displays different sidebars based on the `type_of_guidance`. 

Currently, specific sidebars are supported for: 

- `Pattern` - for COGA Design Guide
- `Test Rule` - for ACT Rules

## Examples

For demo purposes, find below examples of supporting documents:

* [Test Rule](demo-act) (from ACT Conformance Rules)
* [COGA Design Pattern](demo-coga) (from COGA Design Guide)
