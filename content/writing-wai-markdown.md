---
title: "WAI Markdown Extension"
permalink: /writing/wai-markdown/
ref: /writing/wai-markdown/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-wai-markdown.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

WAI Markdown is a minimalist Markdown extension, done through the [wai-website-plugin](https://github.com/w3c/wai-website-plugin/).

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{%comment%}{% include toc.html %}{%endcomment%}

This extension makes two things possible:

1. You can refer to pages by their [`ref`erence in their frontmatter](/writing/frontmatter/#ref) (including fragment identifiers).

2. You can use double angle brackets to insert the actual title of the `ref`erenced page. For example: `[[Standards]](/standards-guidelines/)` would take the actual title of the [W3C Accessibility Standards Overview](https://www.w3.org/WAI/standards-guidelines/) page and insert it instead of using ”Standards”.

  This is especially important when linking to untranslated pages from a translated page – the author of the linking page cannot know what the final title of the linked page is but having different titles in different places would be confusing. Especially if the linked page is translated and therefore its title is known.
