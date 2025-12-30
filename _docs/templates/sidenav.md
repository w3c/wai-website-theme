---
title: "Sidenav Layout"
lang: en
template_includes:
  - head
  - t
  - body-class
  - header
  - sidenav
  - doc-note-msg
  - resources
  - prevnext-navigation
  - prevnext-order
  - feedback-box
  - backtotop
  - footer
template_frontmatter:
  - lang
  - ref
  - title
  - doc-note-type
  - ext_css
  - inline_css
  - image
  - collection
  - title_icon
  - wcag_success_criteria
  - wcag_techniques
  - navigation
  - order
  - title_html
  - footnotestitle
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: sidenav
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

- Subpages of [Get resources for...](https://www.w3.org/WAI/roles/)
- [Web Accessibility Laws and Policies index page](https://www.w3.org/WAI/policies/)
- [Web Accessibility Laws and Policies submission form](https://www.w3.org/WAI/policies/submission/)

## Example

[Open the example in a new tab](/templates/sidenav/demo/){:target="_blank"}

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
