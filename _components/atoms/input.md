---
title: "Input Elements"
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
- name: Default text field
  context:
    label: Text
    type: text
    name: name
- name: Disabled default text field
  context:
    label: Not active
    type: text
    name: name
    disabled: true
- name: Search
  context:
    label: Search
    type: search
    name: q
- name: Email
  context:
    label: Email
    type: email
    name: client_mail
- name: URL
  context:
    label: URL
    type: url
    name: website
order: 1
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
{%raw%}{% include_cached input.html{%endraw%}{% if variant.type %} type="{{variant.type}}"{% else %} type="text"{% endif %} label="{{variant.label}}"{% if variant.class %} class="{{variant.class | join: " "}}"{% endif %} name="{{variant.name}}"{% if variant.disabled %} disabled="{{variant.disabled}}"{% endif %} {%raw%}%}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached input.html type=variant.type label=variant.label class=variant.class disabled=variant.disabled href=variant.href %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached input.html type=variant.type label=variant.label class=variant.class disabled=variant.disabled name=variant.name %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% endfor %}
