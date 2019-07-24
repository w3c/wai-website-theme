---
title: "Images"
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
- name: Left floating
  class: left
  src: /assets/images/inline.png
- name: Right floating
  class: right
  src: /assets/images/inline.png
order: 1
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Images can be right or left aligned. **This component needs a (better) helper class.**

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

{% for variant in page.variants %}

## {{variant.name}}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
<img{% if variant.class %} class="{{ variant.class }}"{% endif %} src="{%raw%}{{ "{%endraw%}{{variant.src}}{%raw%}" | relative_url }}{%endraw%}" alt="Example Image (Alternative Text)">
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

<img{% if variant.class %} class="{{ variant.class }}"{% endif %} src="{{variant.src | relative_url }}" alt="Example Image (Alternative Text)">

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
<img{% if variant.class %} class="{{ variant.class }}"{% endif %} src="{{variant.src | relative_url }}" alt="Example Image (Alternative Text)">
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% endfor %}