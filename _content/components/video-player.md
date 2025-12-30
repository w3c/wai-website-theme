---
title: "Video Player (deprecated version)"
lang: en
doc-note-type: deprecated
doc-note-message-md: The template is deprecated.
inline_css: |
---

## Code

Embedding the video player:

```liquid
{%raw%}{% include video-player.html
    yt-id="93UgG72os8M"
    captions="/perspective-videos/cc/keyboard-en.vtt|en|Captions"
    descriptions=""
    yt-id-ad="1rBwxGMT9ZM"
    captions-ad="/perspective-videos/cc/keyboard_ad-en.vtt|en|Captions"
    descriptions-ad="/perspective-videos/cc/keyboard_ad_desc-en.vtt|en|Descriptions"
%}{% endraw%}
```

### Parameters

`yt-id="93UgG72os8M"`
`yt-id-ad="1rBwxGMT9ZM"`
: YouTube ID of the video, `-ad` for the audio described version

`captions="/perspective-videos/cc/keyboard-en.vtt|en|Captions"`
`captions-ad="/perspective-videos/cc/keyboard_ad-en.vtt|en|Captions"`
: Relative URL to the captioning file (caption = subtitle in the language of the video), `-ad` for the audio described version

`subtitles="/perspective-videos/cc/keyboard-de.vtt|de"`
`subtitles-ad="/perspective-videos/cc/keyboard_ad-de.vtt|de"`
: Relative URL to the subtitle file, so translations of the captioning file.

`descriptions-ad="/perspective-videos/cc/keyboard_ad_desc-en.vtt|en|Descriptions"`
: Text of the audio description

#### Caption/Subtitle/Description listings

The caption, subtitle, and description listings are all in a similar format:

```
path/to/file.vtt|lang-code|default
```

With `|default` only specified if that subtitle/caption should be the default selected one when opening the page. The language code (`lang-code`) is the code that we use for the translation, `de` for German, `zh-hans` for (Simplified Chinese), …

It is possible to concatenate multiple sets of those subtitles using commas. See the source code for the [Video Introduction to Web Accessibility and W3C Standards](https://www.w3.org/WAI/videos/standards-and-benefits/) page for a full-fledged example.

## Example

{% include video-player.html
           yt-id="20SHvU2PKsM"
           %}
