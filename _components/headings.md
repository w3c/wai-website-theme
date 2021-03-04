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

### Regular h1

<h1>Heading <code>&lt;h1&gt;</code></h1>

### Link to resource homepage, underneath h1

If the page is part of a larger resource, the resource homepage can be displayed underneath, by adding this in the frontmatter with `resource.ref`: 

```yaml
resource:
  ref: /some/ref    # uses the ref value of the resource's homepage
```

This will use the name of page with the specified `ref` as the link name and include the “in” in a paragraph below the heading. It looks like this:

<header class="in-resource">
  <h1>Contacting Organizations about Inaccessible Websites</h1>
  <p>in <a href="…">Link to Resource Home Page</a></p>
</header>

### With one or more links to any resources, inside h1

If a page requires display of multiple links and/or full control over what the link name will be, this can be done in the frontmatter with `parent_in_h1`. Note: when you use `parent_in_h1`, it will be included inside the `h1`.

One or more items can be specified. In each, the `ref` attribute is the `ref` attribute of the page you want to display, and the `name` is what the link name should be. It can be one of `title`, `nav_title` or `title_html` (taken from the frontmatter of the page you're linking to), or, for full flexibility, it can be a string. 

```yaml
parent_in_h1: 
  - ref: /atag/at/a/glance
    name: title  # use the page's title value
  - ref: /wcag/at/a/glance
    name: nav_title   # use the page's nav_title value
  - ref: /uaag/at/a/glance
    name: title_html   # use the page's title_html value
  - ref: /uaag/at/a/glance
    name: "My link name"  # name it any way you like
```

This will look like this:

<header class="in-resource">
  <h1>Contacting Organizations about Inaccessible Websites
    <span class="in-resource-sub">in <a href="https://w3.org/WAI/atag/at-a-glance">ATAG at a glance</a>, <a href="https://w3.org/WAI/wcag/at-a-glance">WCAG at a glance</a>, <a href="https://w3.org/WAI/uaag/at-a-glance">UAAG at a glance</a>, <a href="https://w3.org/WAI/uaag/at-a-glance">My link name</a></span>
  </h1>
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

{% assign boxhead ='## `<h2>`–`<h6>`, with example classes (`class="ex"`)' | markdownify %}

{::nomarkdown}
{% include box.html type="start" title=boxhead class="example" %}
{:/}

<h2 class="ex"> Heading <code>&lt;h2&gt;</code></h2>
<h3 class="ex"> Heading <code>&lt;h3&gt;</code></h3>
<h4 class="ex"> Heading <code>&lt;h4&gt;</code></h4>
<h5 class="ex"> Heading <code>&lt;h5&gt;</code></h5>
<h6 class="ex"> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% assign boxhead ='## `<h2>`–`<h6>`, with approach classes (`class="ap"`)' | markdownify %}

{::nomarkdown}
{% include box.html type="start" title=boxhead class="example" %}
{:/}

<h2 class="ap"> Heading <code>&lt;h2&gt;</code></h2>
<h3 class="ap"> Heading <code>&lt;h3&gt;</code></h3>
<h4 class="ap"> Heading <code>&lt;h4&gt;</code></h4>
<h5 class="ap"> Heading <code>&lt;h5&gt;</code></h5>
<h6 class="ap"> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

<hr>

## Space Before Headings

To have less space above headings, put <code>class: tight-page</code> in the [Frontmatter](https://wai-website-theme.netlify.app/writing/frontmatter/#class).
