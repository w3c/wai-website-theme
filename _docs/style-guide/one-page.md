---
title: "WAI Style Guide – Single Page Version"
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
## {{ subpage.title_html }}
{%- capture include_tag %}{% raw %}{% include toc.html %}{% endraw %}{% endcapture -%}
{{ subpage.content | replace: include_tag, '' | offset_headings }}
{% endfor %}
