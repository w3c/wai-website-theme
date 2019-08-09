---
title: "Blockquotes"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
order: 1
group: atoms
variants:
- name: default
  context:
    content: "<p>The power of the Web is in its universality.<br>Access by everyone regardless of disability is an essential aspect.</p><p>Another paragraph. Just for illustration purposes.</p>"
    source: "Tim Berners-Lee, W3C Director and inventor of the World Wide Web"
- name: special
  context:
    class: special
    content: "<p>The power of the Web is in its universality.<br>Access by everyone regardless of disability is an essential aspect.</p><p>Another paragraph. Just for illustration purposes.</p>"
    source: "Tim Berners-Lee, W3C Director and inventor of the World Wide Web"
- name: Pullquote
  context:
    class: pull
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: Pullquote Left
  context:
    class: pull left
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: Pullquote Right
  context:
    class: pull right
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: Pullquote Color Alt 1
  context:
    class: pull alt-1 right
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: Pullquote Color Alt 2
  context:
    class: pull alt-2 right
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: Pullquote Color Alt 3
  context:
    class: pull alt-3 right
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
- name: With source link
  desc: Add the `href` attribute to the include call to link the source to the URI of the `href` attribute.
  context:
    content: "<p>I do what I do because it’s right! Because it’s decent! And above all, it’s kind! It’s just that…</p>"
    source: "John Smith, TARDIS Inc."
    href: "https://example.com"
inline_css: |
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

For quoting someone.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

{% for v in page.variants %}
{% assign variant = v.context %}

## {{v.name}}

{% if variant.class %}Use the class: `{{ variant.class }}`{% endif %}

{% if v.desc %}{{ v.desc }}{% endif %}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include_cached blockquote.html{%endraw%}{% if variant.class %} class="{{ variant.class }}"{% endif %}{% if variant.content %} content="{{variant.content}}"{% endif %}{% if variant.source %} source="{{variant.source}}"{% endif %}{% if variant.href %} href="{{variant.href}}"{% endif %} {%raw%}%}{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include_cached blockquote.html class=variant.class content=variant.content source=variant.source href=variant.href %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached blockquote.html class=variant.class content=variant.content source=variant.source href=variant.href %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% endfor %}
