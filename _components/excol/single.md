---
title: "Expand/Collapse: Single"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
   This is the text in the footer
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Expand/collapses, or disclosures, are used to show and or hide content conditionally.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include excol.html type="start" id="optional-id" %}

### Heading

{% include excol.html type="middle" %}

Content of the expand/collapse.

{% include excol.html type="end" %}
{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include excol.html type="start" id="optional-id" %}

### Heading

{% include excol.html type="middle" %}

Content of the expand/collapse.

{% include excol.html type="end" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include excol.html type="start" id="optional-id" %}

### Heading

{% include excol.html type="middle" %}

Content of the expand/collapse.

{% include excol.html type="end" %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
