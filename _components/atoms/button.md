---
title: "Buttons"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
variants:
- name: Default button
  context:
    label: Button
- name: Disabled button
  context:
    label: Disabled button
    disabled: true
- name: Secondary button
  context:
    label: Secondary button
    class: ['secondary']
- name: Small button
  context:
    label: Small
    class: ['small']
- name: Small secondary button
  context:
    label: Small Secondary
    class: ['small', 'secondary']
- name: Link that looks like a button
  context:
    label: Link Button
    href: 'https://example.com'
    class: ['more']
    type: "link"
- name: Link that looks like a secondary button
  context:
    label: Secondary Link Button
    href: 'https://example.com'
    class: ['more', 'secondary']
    type: "link"
- name: Button with Icon
  context:
    type: "icon"
    icon: search
    label: Icon Button
    class: ["icon"]
- name: Fake Button (to use inside links)
  context:
    type: "fake"
    label: Fake button
    class: ['fake']
- name: Back to Top Link
  context:
    type: "link"
    label: Back to Top
    icon: arrow-up
    href: '#top'
    class: ['backtotop']
- name: Menu button
  context:
    type: "icon"
    label: Menu
    icon: menu
    class: ['menu']
order: 1
inline_css: |
  .box-example .button-backtotop {
    position: static !important;
  }
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Buttons can be used in many ways, the `button.html` include is a good way to get the correct HTML for a button. It has many variants for styling:

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include toc.html type="start" title="Page Contents" %}
{:/}

- This will be replaced by an automatically generated TOC when using Markdown formatting.
{:toc}

{::nomarkdown}
{% include toc.html type="end" %}
{:/}

{% for v in page.variants %}
{% assign variant = v.context %}

## {{v.name}}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include_cached button.html{%endraw%}{% if variant.type %} type="{{variant.type}}"{% endif %}{% if variant.label %} label="{{variant.label}}"{% endif %}{% if variant.class %} class="{{variant.class | join: " "}}"{% endif %}{% if variant.icon %} icon="{{variant.icon}}"{% endif %}{% if variant.disabled %} disabled="{{variant.disabled}}"{% endif %}{% if variant.href %} href="{{variant.href}}"{% endif %} {%raw%}%}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached button.html type=variant.type label=variant.label class=variant.class icon=variant.icon disabled=variant.disabled href=variant.href %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached button.html type=variant.type label=variant.label class=variant.class icon=variant.icon disabled=variant.disabled href=variant.href %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% endfor %}