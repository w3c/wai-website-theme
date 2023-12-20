---
title: "Videos"
permalink: /writing/videos/
ref: /writing/videos/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-videos.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This section covers the steps to correctly integrate a YouTube video into the wai-website.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Step 1: Publish the video on YouTube (preferred)

The [video player component](/components/video-player-data/) is currently designed for videos hosted on YouTube.

## Step 2: Update the _video-metadata.yml_ file to include the new video

The _video-metadata.yml_ file contains all videos captions, subtitles and descriptions metadata. It is centrally edited in the [wai-website-data {% include_cached external.html %}](https://github.com/w3c/wai-website-data) repository.

Each entry for a video looks like this:

{::nomarkdown}
{% include box.html type="start" title="Example" %}
{:/}
```yaml
- id: keyboard
  name:
    en: "Web Accessibility Perspectives: Keyboard Compatibility"
  main-page: /perspective-videos/keyboard/
  path: perspective-videos
  lang-folder: true
  captions:
    - en
  subtitles:
    - fr
  descriptions:
    - en
  captions-ad:
    - en
  subtitles-ad:
    - fr
  descriptions-ad:
    - en
```
{::nomarkdown}
{% include box.html type="end" %}
{:/}

### Add an entry for the new video.

{::nomarkdown}
{% include box.html type="start" class="simple" %}
{:/}

In the following list, parameters are highlighted with emoji:
- ❗ = required for the _video-player-data_ component
- 🌐 = required for translation interoperability/functionalities

{::nomarkdown}
{% include box.html type="end" %}
{:/}

- `id` ❗🌐\
A short unique name that describes the video. Will be used as video identifier.

- `name` 🌐\
A title that describes the video. Will be used in [All WAI Translations Page](https://www.w3.org/WAI/translations/) when video subtitles in other languages are published.

- `main-page` 🌐\
[`ref` value](/writing/frontmatter/#ref) of the main page displaying the video; preferably a page with most accessibility features. Will be used in [All WAI Translations Page](https://www.w3.org/WAI/translations/).

- `path` ❗🌐\
From "wai-videos" folder, path to the VTT files for this video.

- `lang-folder` (optional)\
When present and set to `true`, means VTT files for a language are located in a subfolder named after the language shortcode. Example: `perspective-videos/en` rather than directly in `perspective-videos/`.

- `captions`❗🌐\
Captions' language subtag. Usually `en`.

- `descriptions`\
List of language subtags of the available descriptions.

- `captions-ad`\
Captions' language of the described video (when existing). Usually `en`.

- `descriptions-ad`\
List of language subtags of the available descriptions, for the described video (when existing).

The following parameters are not necessary for a new video, but should be added when the video captions are translated in other languages:

- `subtitles` 🌐\
  List of language subtags of the available subtitles.

- `subtitles-ad` \
  List of language subtags of the available subtitles, for the described video (when existing).

## Add VTT files in _wai-website-data_ repository

All VTT files are stored in `wai-website-data` repository, in `wai-videos` folder.

Inside this folder, VTT files can be organized in subfolders.

{::nomarkdown}
{% include box.html type="start" title="Directory structure illustration" %}
{:/}
```
.
├── wai-videos
│   ├── perspective-videos
│   │   ├── en
│   │   │   ├── keyboard.en.vtt
│   │   │   ├── keyboard_ad.en.vtt
│   │   │   ├── keyboard_ad_desc.en.vtt
│   │   │   └── captions.en.vtt
│   │   └── fr
│   │       ├── keyboard.fr.vtt
│   │       ├── keyboard_ad.fr.vtt
│   │       ├── keyboard_ad_desc.fr.vtt
│   │       └── captions.fr.vtt
│   └── video-introduction
│       ├── video-introduction.en.vtt
│       ├── video-introduction.fr.vtt
│       ├── video-introduction.de.vtt
│       └── video-introduction.zh-hans.vtt
└── ...
```
{::nomarkdown}
{% include box.html type="end" %}
{:/}

VTT filenames must follow the following convention:
- Captions/Subtitles: `<id>`.`<language-subtag>`.vtt
- Captions/Subtitles (described video): `<id>_ad`.`<language-subtag>`.vtt
- Descriptions: `<id>_desc`.`<language-subtag>`.vtt
- Descriptions (described video): `<id>_ad_desc`.`<language-subtag>`.vtt

## Step 3: Embed the video in a resource

The description on how to embed videos is available on the [Video Player Design Component Page](/components/video-player-data/).

## Translations

Guidance on how to translate videos captions/subtitles/descriptions is available in the [Translating Video Subtitles and Descriptions Guide](https://www.w3.org/WAI/about/translating/guides/video-subtitles/)

