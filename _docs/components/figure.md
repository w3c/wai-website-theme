---
title: "Figure"
lang: en
inline_css: |
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Figures can be used to assign text to a series of images. **Note: consider adding an include for figures.**

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
<figure class="shrink-wrap">
  <div class="figcontent"><img src="https://www.w3.org/WAI/eval/images/contrast-gray-white.png" alt="" width="301" height="127"></div>
  <figcaption class="figcaption">Figure: Gray text on light background. </figcaption>
</figure>

<figure class="shrink-wrap">
  <div class="figcontent"> <img src="https://www.w3.org/WAI/eval/images/contrast-b-on-w.png" alt="" width="301" height="127"> <img src="https://www.w3.org/WAI/eval/images/contrast-yellow.png" alt="" width="301" height="127"> </div>
  <figcaption>Figure: Dark text on light background, and yellow text on black background.</figcaption>
</figure>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


## Rendered Output

<figure class="shrink-wrap">
  <div class="figcontent"><img src="https://www.w3.org/WAI/eval/images/contrast-gray-white.png" alt="" width="301" height="127"></div>
  <figcaption class="figcaption">Figure: Gray text on light background. </figcaption>
</figure>

<figure class="shrink-wrap">
  <div class="figcontent"> <img src="https://www.w3.org/WAI/eval/images/contrast-b-on-w.png" alt="" width="301" height="127"> <img src="https://www.w3.org/WAI/eval/images/contrast-yellow.png" alt="" width="301" height="127"> </div>
  <figcaption>Figure: Dark text on light background, and yellow text on black background.</figcaption>
</figure>