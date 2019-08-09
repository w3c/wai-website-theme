---
title: "Show/Hide Buttons"
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

Show/Hide buttons can show and then hide arbitrary DOM elements using a CSS selector.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Hiding content by default

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara" %}

<p class="myspecialpara">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara" %}

<p class="myspecialpara">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara" %}

<p class="myspecialpara">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Showing content by default

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara2" default="show" %}

<p class="myspecialpara2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara2" default="show" %}

<p class="myspecialpara2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include showhidebutton.html showtext="show paragraph" hidetext="hide paragraph" target=".myspecialpara2" default="show" %}

<p class="myspecialpara2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem exercitationem iusto architecto, voluptatibus nam, officiis ad omnis similique dicta soluta eligendi veritatis iste harum necessitatibus nemo consectetur corporis corrupti recusandae.</p>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}