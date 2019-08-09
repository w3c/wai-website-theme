---
title: "Paragraphs"
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
inline_css: |
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Paragraphs. Like this one.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
