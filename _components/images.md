---
title: "Images"
lang: en
github:
  repository: w3c/wai-website-theme
inline_css: |
---

## Prerequisites

This image helper template takes care of providing the right path and markup for images. To make this work efficiently, specify the GitHub repository in the page header, for example:

```yaml
github:
  repository: w3c/wai-repo-name
  path: content/index.md
```

Put images always into the `/content-images/wai-repo-name/` directory (with wai-repo-name being the actual repository of the resource). **This template cannot be cached.**

## Usage

{% capture example %}
{% include image.html src="picture.jpg" alt="alternative text" class="video small" longdesc="/link/to/path" %}
{% endcapture %}

```md
{% raw %}{% include image.html
  src="picture.jpg"
  alt="alternative text"
  class="someclass"
  longdesc="/WAI/fundamentals/components/examples/"
%}{% endraw %}
```

### Attributes

`src`/`srcset`
: Use like in HTML, images can just be specified as the image name (including extension) but must be placed into the `/content-image/wai-repo-name/` directory. The `sizes` attribute can also be used like in HTML.

`alt`
: Alternative Text

`class`
: One of the size classes, and one or more of the helper classes.
  - Size classes:
    + `tiny`: 60px
    + `mini`: 90px
    + `small`: 120px
    + `normal`: 240px
    + `medium`: 360px
    + `large`: 480px
    + `icon`: 1em
  - Helper classes:
    + `video`: rounded corners
    + `left`/`right`: Floating to the beginning/end of the reading direction

`style`
: Custom style elements.

`longdesc`
: (optional) URL to a page that contains a long description of the image.\
If added, a "Long description of image" link will be displayed underneath the image.


## Examples

### Sizes

{% include image.html src="picture.jpg" alt="alternative text" class="icon" %}
{% include image.html src="picture.jpg" alt="alternative text" class="tiny" %}
{% include image.html src="picture.jpg" alt="alternative text" class="mini" %}
{% include image.html src="picture.jpg" alt="alternative text" class="small" %}
{% include image.html src="picture.jpg" alt="alternative text" class="normal" %}
{% include image.html src="picture.jpg" alt="alternative text" class="large" %}

### Video

{% include image.html src="picture.jpg" alt="alternative text" class="tiny video" %}
{% include image.html src="picture.jpg" alt="alternative text" class="mini video" %}
{% include image.html src="picture.jpg" alt="alternative text" class="small video" %}
{% include image.html src="picture.jpg" alt="alternative text" class="normal video" %}
{% include image.html src="picture.jpg" alt="alternative text" class="large video" %}

### Float “left”

{% include image.html src="picture.jpg" alt="alternative text" class="tiny left" %}
{% include image.html src="picture.jpg" alt="alternative text" class="mini left" %}
{% include image.html src="picture.jpg" alt="alternative text" class="small left" %}
{% include image.html src="picture.jpg" alt="alternative text" class="normal left" %}
{% include image.html src="picture.jpg" alt="alternative text" class="large left" %}

### Float “right”
{:style="clear:both"}

{% include image.html src="picture.jpg" alt="alternative text" class="tiny right" %}
{% include image.html src="picture.jpg" alt="alternative text" class="mini right" %}
{% include image.html src="picture.jpg" alt="alternative text" class="small right" %}
{% include image.html src="picture.jpg" alt="alternative text" class="normal right" %}
{% include image.html src="picture.jpg" alt="alternative text" class="large right" %}

{:style="clear:both"}

### Long description

{% include image.html src="picture.jpg" alt="alternative text" longdesc="https://www.w3.org/WAI/fundamentals/components/examples/" %}
