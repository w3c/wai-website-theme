---
title: "Minimal Layout"
lang: en
template_includes:
  - backtotop
  - doc-note-msg
  - feedback-box
  - footer
  - head
  - header-minimal
  - link
  - prev-next-order
  - prevnext-navigation
  - resources
  - t
  - translation-note-msg
template_frontmatter:
  - collection
  - doc-note-type
  - ext_css
  - external_css
  - image
  - inline_css
  - lang
  - navigation
  - order
  - ref
  - resource.ref
  - title_html
  - title_icon
  - title
  - wcag_success_criteria
  - wcag_techniques
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: minimal
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

- [WCAG 2 Level A Conformance page](https://www.w3.org/WAI/WCAG2A-Conformance)
- [WCAG 2 Level AA Conformance page](https://www.w3.org/WAI/WCAG2AA-Conformance)
- [WCAG 2 Level AAA Conformance page](https://www.w3.org/WAI/WCAG2AAA-Conformance)

## Example

[Open the example in a new tab](/templates/minimal/demo/){:target="_blank"}

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
