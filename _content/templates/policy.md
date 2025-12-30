---
title: "Policy Layout"
lang: en
template_includes:
  - backtotop
  - body-class
  - box
  - footer
  - head
  - header
  - multilang-list-policy-links
  - multilang-list
  - multilang-policy-title
  - multilang-title
  - sidenav
  - t
  - toc
template_frontmatter:
  - collection
  - country
  - disclaimer
  - doc-note-type
  - ext_css
  - footnotestitle
  - image
  - inline_css
  - lang
  - last_updated
  - policies
  - ref
  - relatedpages
  - title
  - updatemsg
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: policy
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

Country/regions pages of the [Web Accessibility Laws & Policies list](https://www.w3.org/WAI/policies/). Example: [Åland](https://www.w3.org/WAI/policies/aland/).

## Example

[Open the example in a new tab](/templates/policy/demo/){:target="_blank"}

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
