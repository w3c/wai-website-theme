---
title: "Results by category"
lang: en
inline_css: |
---

This component displays the results of a web accessibility report by category. It can be used on a report page.

## Used by

This component is used by:

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)

## Code

```liquid
{%raw%}{% include results-by-category.html
   show_missing="true"
%}{% endraw%}
```

### Making it work

The data in this component is hardcoded, as it depends on the usage how best to implement.

When implementing this in an application, you'll have to create a component that can be passed the numbers or results for each result category.

### Parameters

`show_missing="true | false"`
: Whether to show a list of items that have not been evaluated (optional)

## Examples

### With missing results

{% include results-by-category.html
    show_missing="true"
%}

### Without missing results

{% include results-by-category.html %}
