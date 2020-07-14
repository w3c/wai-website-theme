---
title: "Tool header"
lang: en

---

This is a minimal header that is used for WAI tools that exist outside the main WAI website. Such tools commonly don't require full WAI navigation or functionality like search.

## Examples

### Example 1: ATAG Report Tool

{% include tool-header.html tool-name="ATAG Report Tool" %}

### Example 2: WCAG EM Report Tool

{% include tool-header.html tool-name="WCAG EM Report Tool" %}

### Example 3: Authoring Tools with accessibility support

{% include tool-header.html tool-name="Authoring Tools with accessiblity support" %}

## Code

Embedding a header:

```liquid
{%raw%}{% include tool-header.html
   tool-name="ATAG Report Tool"
%}{% endraw%}
```

### Parameters

`tool-name="ATAG Report Tool"`
: Name of the tool
