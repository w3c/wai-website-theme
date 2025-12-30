---
title: "Video Player"
lang: en
inline_css: |
---

## Code

Embedding the video player:

```liquid
{%raw%}{% include video-player-data.html
    video-id="video-introduction"
    yt-id="20SHvU2PKsM"
%}{% endraw%}
```

### Parameters

`yt-id="20SHvU2PKsM"`
`yt-id-ad="1rBwxGMT9ZM"`
: YouTube ID of the video, `-ad` for the audio described version

`video-id="video-introduction"`
: Unique identifier of the video, as used in video-metadata.yml & VTT files basenames.

## Behaviour

- Based on video id, the video player component automatically uses all related VTT files.
- Captions/subtitles and descriptions in the language of the page are selected by default.
- The user can still select any other available language in the video player interface, to see the captions/subtitles/descriptions in another language.
- If the language of the page is supported by AblePlayer, the video player interface is displayed in that language.

## Example

{% include video-player-data.html
  video-id="video-introduction"
  yt-id="20SHvU2PKsM"
%}

