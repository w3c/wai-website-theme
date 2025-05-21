---
title: Boxes
lang: en
variants:
- name: Default Box
  context:
    headerlabel: Standard header
    headertype: default
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem laudantium, molestias perspiciatis corporis aspernatur earum quibusdam, sequi, error pariatur delectus accusantium, cum! Maxime ad, eos ea. Ab labore aliquam quam!"
- name: Simple Box
  context:
    headerlabel: "Status: Draft"
    content: "This is an in-progress, unapproved draft."
    mods: ['simple']
- name: Large Header
  context:
    headerlabel: Standard header
    headertype: large
    headermods: ['large']
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem laudantium, molestias perspiciatis corporis aspernatur earum quibusdam, sequi, error pariatur delectus accusantium, cum! Maxime ad, eos ea. Ab labore aliquam quam!"
- name: Large header w/ Icon
  context:
    headerlabel: Large header w/ Icon
    headertype: icon
    icon: warning
    headermods: ['large', 'icon']
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem laudantium, molestias perspiciatis corporis aspernatur earum quibusdam, sequi, error pariatur delectus accusantium, cum! Maxime ad, eos ea. Ab labore aliquam quam!"
- name: Link list
  context:
    headerlabel: Large header w/ Icon
    mods: ['linklist', 'large', 'icon']
    contentvar: linklist
- name: "Help improve this page"
  context:
    headerlabel: "Help improve this page"
    mods: ['icon']
    icon: comments
    contentvar: help-improve
- name: Small box, floating right
  context:
    headerlabel: "More info"
    mods: ['simple', 'right', 'aside']
    content: 'When you want to learn more about how different disabilities affect Web use, and read about scenarios of people with disabilities using the Web, see [How People with Disabilities Use the Web](https://w3.org/WAI/).'
- name: Highlighted Box
  context:
    headerlabel: "Highlighted"
    mods: ['highlighted']
    content: 'When you want to learn more about how different disabilities affect Web use, and read about scenarios of people with disabilities using the Web, see [How People with Disabilities Use the Web](https://w3.org/WAI/).'
- name: Specify Heading Level
  context:
    headerlabel: "This is a heading level 4"
    mods:
    h: 4
    content: 'When you want to learn more about how different disabilities affect Web use, and read about scenarios of people with disabilities using the Web, see [How People with Disabilities Use the Web](https://w3.org/WAI/).'
inline_css: |
  h3 { clear: both; }
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Boxes are used to group content.

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

{% unless variant.content %}
{% if variant.contentvar == 'help-improve' %}
{% capture content %}
<p>Please share your ideas, suggestions, or comments via email to the publicly-archived list <a href="#">wai-eo-editors@w3.org</a> or via GitHub.</p>
<div class="button-group">
  {% include_cached button.html href="#" label="Email" %}
  {% include_cached button.html href="#" label="Fork &amp; Edit on GitHub" %}
  {% include_cached button.html href="#" label="List of GitHub Issues" %}
  {% include_cached button.html href="#" label="New GitHub Issue" %}
</div>
{% endcapture %}
{% endif %}
{% if variant.contentvar == 'linklist' %}
{% capture content %}
* [{% include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span>](#)
* [{% include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span>](#)
* [{% include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span>](#)
* [{% include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span>](#)
* [{% include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span>](#)
{:.linklist}
{% endcapture %}
{% endif %}
{% else %}
{% capture content %}{{variant.content}}{%endcapture%}
{% endunless %}

## {{v.name}}

```liquid
{%raw%}{::nomarkdown}
{% include box.html type="start" title="{%endraw%}{{variant.headerlabel}}{%raw%}"{%endraw%}{% if variant.mods %} class="{{variant.mods | join: " "}}"{% endif %}{%raw%}{%endraw%}{% if variant.icon %} icon="{{variant.icon}}"{% endif %}{%raw%}{%endraw%}{% if variant.h %} h="{{variant.h}}"{% endif %}{%raw%} %}
{:/}

{%endraw%}{{content}}{%raw%}

{::nomarkdown}
{% include box.html type="end" %}
{:/}{%endraw%}
```

### Rendered Output

{::nomarkdown}
{% assign classes = variant.mods | join: " " %}
{% include box.html type="start" title=variant.headerlabel class=classes icon=variant.icon h=variant.h%}
{:/}

{{content}}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### HTML output (DO NOT USE)

```html
{% assign classes = variant.mods | join: " " %}
{% include box.html type="start" title=variant.headerlabel class=classes icon=variant.icon  h=variant.h%}
{{content | markdownify }}
{% include box.html type="end" %}
```

{% endfor %}