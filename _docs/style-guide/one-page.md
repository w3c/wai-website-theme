---
title: "Style Guide – Single Page Version"
lang: en
lead: "Follow these guidelines when writing materials for W3C WAI."
inline_css: >
  h1, h2, h3, h4, h5 {
    color: #000;
    font-weight: 600;
    margin-block-end: 1.25rem;
  }

  h1 {
    font-size: 2.5rem;
  }

  h2 {
    font-size: 2rem;
    border: none;
    padding-block-end: 0.25rem;
    margin-block-start: 4rem;
  }

  h3, h2 + h3 {
    font-size: 1.5rem;
    margin-block-start: 3rem;
  }

  h4, h3 + h4 {
    font-size: 1.25rem;
    margin-block-start: 2.5rem;
  }

  h5, h4 + h5 {
    font-size: 1.125rem;
    margin-block-start: 2rem;
  }

  h6, h5 + h6 {
    font-size: 1rem;
    margin-block-start: 1.5rem;
    margin-block-end: 1rem;
  }

  .lead {
    margin-bottom: 1.5rem;
  }
---

{::nomarkdown}
{% include_cached box.html type="start" %}
{:/}
This page provides a one-page view of the guidance. To navigate the guide section by section, see the [style guide index page](/style-guide/).
{::nomarkdown}
{% include_cached box.html type="end" %}
{:/}

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
## {{ subpage.title_sentence }}
{% capture include_tag %}{% raw %}{% include toc.html %}{% endraw %}{% endcapture %}
{{ subpage.content | replace: include_tag, '' | offset_headings }}
{% endfor %}
