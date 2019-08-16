---
title: "Lists"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
github:
  repository: w3c/wai-website-theme
  path: _components/lists.md
inline_css: |
---

{% include toc.html levels="2,3" %}

## Ordered List

### Code

{% capture example %}
1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.

   1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.

   2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
      
      1. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.

      2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.

2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.
{% endcapture %}

```md
{{example}}
```

### Example

{{example}}

## Unordered List

### Code

{% capture example %}
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
  * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
  * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
    * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
    * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{% endcapture %}

```md
{{example}}
```

### Example

{{example}}

### Alternative style (Circle) {#circle}

Use the class `alt` to have open circle list-icons.

#### Code

{% capture example %}
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
  * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
  * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
    * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
    * Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicabo quasi vero.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.alt}
{% endcapture %}

```md
{{example}}
```

#### Example

{{example}}

## Description List

### Code

```md
[Selecting Web Accessibility Evaluation Tools](…)
: Provides guidance on choosing tools. It describes the features and functionality of different types of evaluation tools, and discusses things to consider for your situation.

[Web Accessibility Evaluation Tools List](…)
: Includes information on almost 100 tools. You can use the filters to narrow down the list to the types of tools you are interested in.
```

### Example

[Selecting Web Accessibility Evaluation Tools](…)
: Provides guidance on choosing tools. It describes the features and
functionality of different types of evaluation tools, and discusses
things to consider for your situation.

[Web Accessibility Evaluation Tools List](…)
: Includes information on almost 100 tools. You can use the filters to
narrow down the list to the types of tools you are interested in.

### Not Bold

To remove the boldness from the `<dt>` elements, use the `notbold` class:

#### Code

```md
[Selecting Web Accessibility Evaluation Tools](…)
: Provides guidance on choosing tools. It describes the features and functionality of different types of evaluation tools, and discusses things to consider for your situation.

[Web Accessibility Evaluation Tools List](…)
: Includes information on almost 100 tools. You can use the filters to narrow down the list to the types of tools you are interested in.
{:.notbold}
```

#### Example

[Selecting Web Accessibility Evaluation Tools](…)
: Provides guidance on choosing tools. It describes the features and
functionality of different types of evaluation tools, and discusses
things to consider for your situation.

[Web Accessibility Evaluation Tools List](…)
: Includes information on almost 100 tools. You can use the filters to
narrow down the list to the types of tools you are interested in.
{:.notbold}

## List variations

### Link List

#### Code

```html
<ul class="linklist">
  <li><a href="#">{%raw%}{%include_cached icon.html name="check-circle" %}{%endraw%} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%raw%}{%include_cached icon.html name="chevron-right" %}{%endraw%} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%raw%}{%include_cached icon.html name="chevron-right" %}{%endraw%} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%raw%}{%include_cached icon.html name="chevron-right" %}{%endraw%} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%raw%}{%include_cached icon.html name="chevron-right" %}{%endraw%} <span class="visual-a">adaptive strategies</span></a></li>
</ul>
```

#### Example

<ul class="linklist">
  <li><a href="#">{%include_cached icon.html name="check-circle" %} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span></a></li>
  <li><a href="#">{%include_cached icon.html name="chevron-right" %} <span class="visual-a">adaptive strategies</span></a></li>
</ul>

### Two Columns

#### Code

```md
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.two.columns}
```

#### Example

* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.two.columns}

### Four Columns

#### Code

```md
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.four.columns}
```

#### Example

* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.four.columns}

### Checkbox List

#### Code

```md
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.checkbox}
```

#### Example

* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.

* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.checkbox}

### List that does not look like a list {#nolist}

{% capture example %}
* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.

* Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explicab.
{:.nolist}
{% endcapture %}

#### Code

```md
{{example}}
```

#### Example

{{example}}

### No list with Images/Icons {#nolistimg}

You can specify the width of the image with an extra class (instead of `{:.nolist.withicons}` write `{:.nolist.withicons.sizeclass}`). Possible values for sizes are:
* `tiny`:  60px
* `mini`:  75px
* `small`: 120px
* `normal`: 240px (default)

On mobile, images float left and are half the size, with a minimum width of 60px.

{% capture example %}
* {:.left} {% include image.html src="picture.jpg" alt="Demo alt text" %} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.

* {:.right} {% include image.html src="picture.jpg" alt="Demo alt text" %} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.
{:.nolist.withicons}
{% endcapture %}

#### Code

```md
* {:.left} {%raw%}{% include image.html src="picture.jpg" alt="Demo alt text" %}{%endraw%} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.

* {:.right} {%raw%}{% include image.html src="picture.jpg" alt="Demo alt text" %}{%endraw%} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta minus harum sit eos ipsam aliquid eveniet explica.
{:.nolist.withicons}
```

#### Example

{{example}}