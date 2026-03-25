---
title: "WAI Style Guide (All-In-One)"
lang: en
---

{::options toc_levels="2,3" /}

{::nomarkdown}
{% include_cached toc.html type="start" title="Page Contents" %}
{:/}

-   TOC is created automatically.
{:toc}

{::nomarkdown}
{% include_cached toc.html type="end" %}
{:/}

{% for subpage in site.style-guide %}
## {{ subpage.title }}
{{ subpage.content | offset_headings }}
{% endfor %}