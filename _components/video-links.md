---
title: "Video Links"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
inline_css: |
---

```liquid
{%raw%}{% include video-link.html title="…" href="…" src="…" [class="|small|inline"] [ratio="16:9"] %}{%endraw%}
```

* `title`: Text underneath the image.
* `href`: Link destination.
* `src`: Image source.
* (optional) `class`: Class defines the size
  * `none`: default size
  * `small`: small size
  * `inline`: inline link
* (optional) `ratio`: Specify `16:9` for 16:9 format (default), or `4:3` for 4:3 format.

## Default

<a href="…" class="video-link{% for c in class %} video-link-{{ c }}{% endfor %}">
  <img src="{{ '/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg' | relative_url }}" alt="">
  <span>Video Title</span>
</a>

## Small

<a href="…" class="video-link video-link-small">
  <img src="{{ '/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg' | relative_url }}" alt="">
  <span>Video Title</span>
</a>

## Inline

<a href="…" class="video-link video-link-inline">
  <img src="{{ '/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg' | relative_url }}" alt="">
  <span>Video Title</span>
</a>