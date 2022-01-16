---
title: "Using HTML"
permalink: /writing/html/
ref: /writing/html/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-html.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

In General HTML can be used for content, but it has disadvantages compared to Markdown.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{%comment%}{% include toc.html %}{%endcomment%}

Due to the nature of HTML the functionality of [WAI Markdown Extension](/writing/wai-markdown/) is not available. It’s recommended to **always** use absolute URLs when using HTML.

Apart from that all HTML can be used as long as the outer-most HTML element is anchored in the first column of the markdown text file.

HTML files routinely create very complicated diff files when committed and are harder to review in plain text.

**It’s strongly recommended to use Markdown where possible.**
