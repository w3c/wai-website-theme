---
title: "Video Links"
lang: en
doc-note-type: deprecated
doc-note-message-md: There is the desire and requirement to use video images much more freely than it is possible with such a rigid template. Therefore the template is deprecated. **Use a normal link and image annotation in Markdown with the new images template (preferred).**
inline_css: |
---

```liquid
{%raw%}{% include video-link.html title="…" href="…" src="…" [class="|small|inline"] %}{%endraw%}
```

* `title`: Text underneath the image.
* `href`: Link destination.
* `src`: Image source.
* (optional) `class`: Class defines the size
  * `none`: default size
  * `small`: small size
  * `inline`: inline link

## Default

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/picture.jpg" %}

## Small

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/wai-website-theme/picture.jpg" class="small" %}

## Inline

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/wai-website-theme/picture.jpg" class="inline" %}