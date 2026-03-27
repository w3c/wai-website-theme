---
title: "WAI Style Guide – Single Page Version"
lang: en
lead: "Guidelines for writing materials for W3C WAI."
---
{% if page.lead %}<p class="lead">{{ page.lead }}</p>{% endif %}

{::options toc_levels="2,3" /}

{::nomarkdown}
{% include_cached box.html type="start" %}
{:/}
This page provides a one-page view of the guidance. To navigate the guide section by section, see the [style guide index page](/style-guide/).
{::nomarkdown}
{% include_cached box.html type="end" %}
{:/}

{::nomarkdown}
{% include_cached toc.html type="start" title="Page Contents" %}
{:/}

-   TOC is created automatically.
{:toc}

{::nomarkdown}
{% include_cached toc.html type="end" %}
{:/}

{% for subpage in site.style-guide %}
## {{ subpage.title_sentence }}
{% capture include_tag %}{% raw %}{% include toc.html %}{% endraw %}{% endcapture %}
{{ subpage.content | replace: include_tag, '' | offset_headings }}
{% endfor %}