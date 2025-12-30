---
title: "Grid"
lang: en
---

A grid (defined with [CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout)) is used by the WAI website and some tools.

You can view it in the browser on this page by using the Developer Tools in Firefox (select an element with `default-grid` class and pick “Overlay Grid” in the Layout tab).

## Used by

The grid is notably used by the following tools:

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)
* [WCAG-EM Report Tool](https://w3.org/WAI/atag/report-tool)

## Examples

### Example 1: full grid

{% include image.html src="default-grid.png" alt="WAI homepage with purple lines overlaid, they form 10 columns with the first and last using all remaining whitespace" %}

{::nomarkdown}
{% include box.html type="start" title="HTML" class="example simple" %}
{:/}

```html
{% include grid.html %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


### Example 2: more compact grid for tools

{% include image.html src="compact-grid.png" alt="ATAG Report Tool with purple lines overlaid, they form 10 columns, slightly smaller than the one above, with the first and last using all remaining whitespace" %}

{::nomarkdown}
{% include box.html type="start" title="HTML" class="example simple" %}
{:/}

```html
{% include grid.html class="compact-grid" %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Code

Any element with a `default-grid` class becomes a grid container. Elements that are direct children of the grid container can be positioned on the grid. See [CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout) for more details on how CSS Grid works.

### Variations

`compact-grid`
: Add `compact-grid` in addition to the `default-grid` class. This is a narrower grid for more compact interfaces.
