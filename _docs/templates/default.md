---
title: "Default Layout"
lang: en
layout: default
template_includes:
  - backtotop
  - body-class
  - doc-note-msg
  - feedback-box
  - footer
  - head
  - header
  - icon
  - link
  - prevnext-navigation
  - prevnext-order
  - resources
  - secondarynav
  - t
  - translation-note-msg
template_frontmatter:
  - class
  - collection
  - doc-note-type
  - ext_css
  - external_css
  - footnotestitle
  - image
  - inline_css
  - lang
  - navigation
  - noleftcol
  - order
  - parent
  - parent_in_h1
  - ref
  - resource
  - sidebar
  - sidebaricon
  - title
  - title_html
  - title_icon
  - title_image
  - wcag_success_criteria
  - wcag_techniques
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: default
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

Most pages on the [W3C WAI website](https://www.w3.org/WAI).

## Example

The current page uses the default template.

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
