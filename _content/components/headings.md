---
title: "Headings"
lang: en
inline_css: |
---

## Page title (`h1`)

### Regular h1

{::nomarkdown}
{% include box.html type="start" class="example" %}
{:/}

<h1>Heading <code>&lt;h1&gt;</code></h1>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Link to the resource homepage, underneath h1

If the page is part of a larger resource, the resource homepage can be displayed underneath, by adding the following in the frontmatter:

{::nomarkdown}
{% include box.html type="start" %}
{:/}

```yaml
resource:
  ref: /some/ref    # uses the ref value of the resource's homepage
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

This will use the name of page with the specified `ref` as the link name and include the “in” in a paragraph below the heading. It looks like this:

{::nomarkdown}
{% include box.html type="start" %}
{:/}

<header class="in-resource">
  <h1>Contacting Organizations about Inaccessible Websites</h1>
  <p>in <a href="#">Link to Resource Home Page</a></p>
</header>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### With one or more links to any resources, inside h1

If a page requires display of multiple links and/or full control over what the link name will be, this can be done in the frontmatter with `parent_in_h1`. Note: when you use `parent_in_h1`, it will be included inside the `h1`.

One or more items can be specified. In each, the `ref` attribute is the `ref` attribute of the page you want to display, and the `name` is what the link name should be. It can be one of `title`, `nav_title` or `title_html` (taken from the frontmatter of the page you're linking to), or, for full flexibility, it can be a string.

{::nomarkdown}
{% include box.html type="start" %}
{:/}

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

{::nomarkdown}
{% include box.html type="end" %}
{:/}

This will look like this:

{::nomarkdown}
{% include box.html type="start" %}
{:/}

<header class="in-resource">
  <h1>Contacting Organizations about Inaccessible Websites
    <span class="in-resource-sub">in <a href="https://w3.org/WAI/atag/at-a-glance">ATAG at a glance</a>, <a href="https://w3.org/WAI/wcag/at-a-glance">WCAG at a glance</a>, <a href="https://w3.org/WAI/uaag/at-a-glance">UAAG at a glance</a>, <a href="https://w3.org/WAI/uaag/at-a-glance">My link name</a></span>
  </h1>
</header>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Other headings (`h2` to `h6`)

### Regular headings

{::nomarkdown}
{% include box.html type="start" %}
{:/}

<h2> Heading <code>&lt;h2&gt;</code></h2>
<h3> Heading <code>&lt;h3&gt;</code></h3>
<h4> Heading <code>&lt;h4&gt;</code></h4>
<h5> Heading <code>&lt;h5&gt;</code></h5>
<h6> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Headings with example classes (`class="ex"`)

{::nomarkdown}
{% include box.html type="start" %}
{:/}

<h2 class="ex"> Heading <code>&lt;h2&gt;</code></h2>
<h3 class="ex"> Heading <code>&lt;h3&gt;</code></h3>
<h4 class="ex"> Heading <code>&lt;h4&gt;</code></h4>
<h5 class="ex"> Heading <code>&lt;h5&gt;</code></h5>
<h6 class="ex"> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Headings with approach classes (`class="ap"`)

{::nomarkdown}
{% include box.html type="start" title=boxhead %}
{:/}

<h2 class="ap"> Heading <code>&lt;h2&gt;</code></h2>
<h3 class="ap"> Heading <code>&lt;h3&gt;</code></h3>
<h4 class="ap"> Heading <code>&lt;h4&gt;</code></h4>
<h5 class="ap"> Heading <code>&lt;h5&gt;</code></h5>
<h6 class="ap"> Heading <code>&lt;h6&gt;</code></h6>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Space Before Headings

To have less space above headings, put in the [Frontmatter](/fundamentals/frontmatter/#class):

{::nomarkdown}
{% include box.html type="start" %}
{:/}

```yaml
class: tight-page
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
