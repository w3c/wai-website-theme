---
title: "Headings"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
inline_css: |
---

{% assign boxhead ="## `<h1>`" | markdownify %}

{::nomarkdown}
{% include box.html type="start" title=boxhead class="example" %}
{:/}

With optional link to resource home page:

<header class="in-resource">
  <h1>Contacting Organizations about Inaccessible Websites</h1>
  <p>in <a href="…">Link to Resource Home Page</a></p>
</header>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% assign boxhead ="## `<h2>`–`<h6>`" | markdownify %}

{::nomarkdown}
{% include box.html type="start" title=boxhead class="example" %}
{:/}

<h2> Heading <code>&lt;h2&gt;</code></h2>
<h3> Heading <code>&lt;h3&gt;</code></h3>
<h4> Heading <code>&lt;h4&gt;</code></h4>
<h5> Heading <code>&lt;h5&gt;</code></h5>
<h6> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}