---
title: "Minimal header"
lang: en

---

This is a minimal header that is used for WAI tools that exist outside the main WAI website. Such tools commonly don't require full WAI navigation or functionality like search.

## Used by

This component is used by: 

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)
* WCAG EM Report Tool (2020 rebuild)
* WCAG Supporting Documents redesign project


## Examples

### Example 1: ATAG Report Tool

{% include minimal-header.html title="ATAG Report Tool" %}

### Example 2: WCAG EM Report Tool

{% include minimal-header.html title="WCAG EM Report Tool" %}

### Example 3: WCAG Techniques

{% include minimal-header.html title="WCAG Techniques" %}

## Code

Embedding a header in a Liquid template:

```liquid
{%raw%}{% include minimal-header.html
   title="ATAG Report Tool"
%}{% endraw%}
```

Embedding a header as HTML:

{::nomarkdown}
{% include box.html type="start" title="HTML" class="example simple" %}
{:/}

```html
{% include minimal-header.html
   title="ATAG Report Tool"
%}
``` 


{::nomarkdown}
{% include box.html type="end" %}
{:/}


### Parameters

`title="ATAG Report Tool"`
: Name of the tool
