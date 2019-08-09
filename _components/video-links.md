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

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg" %}

## Small

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg" class="small" %}

## Inline

{% include video-link.html title="Video Title" href="https://w3.org/WAI/" src="/content-images/wai-website-theme/video-still-accessibility-intro-16-9.jpg" class="inline" %}