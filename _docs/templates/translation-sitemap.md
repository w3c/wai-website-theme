---
title: "Translation Sitemap Layout"
lang: en
template_includes:
- head
- t
- body-class
- header
- icon
- secondarynav
- link
- doc-note-msg
- box
- excol
- t-status
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
- external_css
- ext_css
- inline_css
- image
- title
- collection
- class
- footnotestitle
- noleftcol
- sidebaricon
- sidebar
- parent
- resource
- parent_in_h1
- title_icon
- title_image
- title_html
- tlang
- navigation
- order
---

## Usage

In the frontmatter of the page, use:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```yaml
layout: translation-sitemap
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Used by

The subpages in [Translations Sitemaps](https://www.w3.org/WAI/about/translating/sitemaps/). For example, the [Arabic translation sitemap](https://www.w3.org/WAI/about/translating/sitemaps/sitemap-ar/).

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
