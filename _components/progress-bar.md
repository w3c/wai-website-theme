---
title: "Progress Bar"
lang: en
inline_css: |
---

This progress bar component contains the percentage in visually hidden text and a dark bar on light background.

<b>Note</b>: By default, this progress bar does not have enough contrast on its own. Complement it with a caption like “3 out of 10”, or use the high contrast version.

## Code

Embedding a progress bar:

```liquid
{%raw%}{% include progress-bar.html
   percentage="30"
%} 3 out of 10{% endraw%}
```


```liquid
{%raw%}{% include progress-bar.html
   percentage="40"
   class="highcontrast"
%}{% endraw%}
```

### Parameters

`percentage="30"`
: Percentage the bar has progressed

`class=""`
: A classname (optional)

## Examples

### Standard (use with caption)

{% include progress-bar.html
   percentage="30"
%} 3 out of 10

### High contrast (can be used on its own)

{% include progress-bar.html
   percentage="30"
   class="highcontrast"
%}
