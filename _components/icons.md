---
title: "Icons"
lang: en
variants:
- name: default
- name: book
- name: checkmark
- name: loupe
- name: design
- name: development
- name: laws
- name: search
- name: ex-circle
- name: check-circle
- name: cancel-rect
- name: chevron-up
- name: chevron-down
- name: chevron-left
- name: chevron-right
- name: arrow-up
- name: arrow-down
- name: arrow-left
- name: arrow-right
- name: comments
- name: audio-description
- name: external-link
- name: different-view
- name: warning
- name: readmore
- name: desktop
- name: laptop
- name: tablet
- name: mobile
- name: code
- name: code-file
- name: fork
- name: cart-plus
- name: menu
- name: languages
- name: translations
- name: rss
- name: youtube
- name: mastodon
- name: linkedin
- name: creative-commons
- name: arrow-up-thin
- name: arrow-left-thin
- name: arrow-right-thin
order: 1
inline_css: |
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Icons can be used in various ways with the `icon.html` helper. <a href="https://github.com/w3c/wai-website-theme/blob/main/assets/images/icons.svg">The icons are in SVG format in a single sprite file.</a>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html levels="2" %}

## Icons without alternative text

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include_cached icon.html name="{%endraw%}default{%raw%}" %}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached icon.html name=default %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached icon.html name=default %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Icons with alternative text

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include_cached icon.html name="{%endraw%}default{%raw%}" label="Alt text" %}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached icon.html name="default" label="Alt text" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached icon.html name="default" label="Alt text" %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{%- assign variants = page.variants | sort: "name" -%}
{:/}

## All Icons

<ul style="font-size: 2.5rem; display:grid; grid-template-columns: repeat(auto-fit, minmax(2.5rem, 7rem)); margin: 0;padding: 0;">
{%- for v in variants -%}
  <li style="list-style: none;"><a href="#{{v.name}}" style="display:block; width: 100%; text-align: center;">{% include_cached icon.html name=v.name label=v.name %}</a></li>
{%- endfor -%}
</ul>

{::nomarkdown}
{%- for v in variants -%}
{:/}

### {% include_cached icon.html name=v.name label=v.name %} {{v.name}} {%raw%}{#{%endraw%}{{v.name}}{%raw%}}{%endraw%}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include_cached icon.html name="{%endraw%}{{v.name}}{%raw%}" %}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached icon.html name=v.name %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached icon.html name=v.name %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% endfor %}
