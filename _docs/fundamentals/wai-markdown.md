---
title: "WAI Markdown Extension"
redirect_from:
  - /writing/wai-markdown/
lang: en
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

2. You can use double square brackets to insert the actual title of the `ref`erenced page. For example: ```[[Standards]](/standards-guidelines/)``` would take the actual title of the [W3C Accessibility Standards Overview](https://www.w3.org/WAI/standards-guidelines/) page and insert it instead of using ”Standards”.

This supports translations. When a linked page is translated, then the title of the translated page is inserted. When the linked page is not translated, then "(in English)" is added after the link.
