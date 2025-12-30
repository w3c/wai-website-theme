---
title: "Video Card"
lang: en
inline_css: |
---

## Code

Embedding the video card:

```liquid
{%raw%}{% include video-card.html
   video-url="//media.w3.org/wai/evaluation-intros/conformance-evaluation.mp4"
   captions="//media.w3.org/wai/evaluation-intros/conformance-evaluation-cc.srt"
   accessible-version="https://www.w3.org/WAI/test-evaluate/conformance/"
   accessible-version-label="Video: Conformance Evaluation"
%}{% endraw%}
```

### Parameters

`video-url="//media.w3.org/wai/evaluation-intros/conformance-evaluation.mp4"`
: URL of the video

`captions="//media.w3.org/wai/evaluation-intros/conformance-evaluation-cc.vtt"`
: URL of captions file

`accessible-version="https://www.w3.org/WAI/test-evaluate/conformance/"`
: (optional) If added, a description in the video underneath will link to a page that contains a more accessible version of this video (e.g. using an AblePlayer embed)

`accessible-version-label="Video: Conformance Evaluation"`
: (optional) If added, the name of the link to a page that contains a more accessible version of this video

`poster="preview.png"`
: (optional) Set an image to be used as the video player's [`poster`](https://html.spec.whatwg.org/dev/media.html#attr-video-poster).

#### Caption/Subtitle/Description listings

The caption and subtitle listings are all in a similar format:

```
path/to/file.vtt|lang-code|default
```

With `|default` only specified if that subtitle/caption should be the default selected one when opening the page. The language code (`lang-code`) is the code that we use for the translation, `de` for German, `zh-hans` for (Simplified Chinese), …

It is possible to concatenate multiple sets of those subtitles using commas. See the source code for the [Video Introduction to Web Accessibility and W3C Standards](https://www.w3.org/WAI/videos/standards-and-benefits/) page for a full-fledged example.

## Example

{% include video-card.html
    video-url="//media.w3.org/wai/evaluation-intros/conformance-evaluation.mp4"
    captions="/wai-videos/evaluating/conformance-evaluation.en.vtt|en|default"
    accessible-version="https://www.w3.org/WAI/test-evaluate/conformance/"
    accessible-version-label="Video: Conformance Evaluation"
%}
