---
title: "Home Layout"
lang: en
template_includes:
  - backtotop
  - body-class
  - footer
  - head
  - header
  - t
template_frontmatter:
  - collection
  - doc-note-type
  - ext_css
  - image
  - inline_css
  - lang
  - ref
  - title
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: home
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

The [W3C WAI website homepage](https://www.w3.org/WAI).

## Example

[Open the example in a new tab](/templates/home/demo/){:target="_blank"}

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
