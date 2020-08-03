---
title: "Tool navigation"
lang: en

---

This is a navigation (landmark) that can display which pages exist in a tool and whether one if current. 

## Example

{% include tool-navigation.html name="Navigation" %}

## Code

Embedding a navigation that should be labeled “Main navigation”:

```liquid
{%raw%}{% include tool-navigation.html name="Main navigation"
%}{% endraw%}
```

### Parameters

`name="Navigation"`
: Name of this navigation (used as the label for the `nav` landmark)
