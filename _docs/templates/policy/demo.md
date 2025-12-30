---
title: "Policy Layout Demo"
lang: en
layout: policy
country:
  en: Country
last_updated: 2025-10-01
updatemsg: Short message describing the update.
relatedpages:
policies:
  - title:
      en: Law title in English
      fr: Law title in another language
    url:
      fr: http://www.legifrance.gouv.fr/affichTexte.do?cidTexte=JORFTEXT000000809647&dateTexte=
    updated: 2016-02-17
    wcagver: WCAG 2.2
    enactdate: 2000
    type: Accessibility law # other values: law/policy/procurement
    ministries:
      - title:
          en: Ministry
        url:
          en: https://www.example.org
    webonly: no # other values: yes
    scope: Public sector # keys that allows us to use any combination
    standard:
      - title:
          en: Relevant standard title
        desc: Relevant standard description
        url:
          en: https://www.example.org
    documents:
      - title:
          en: Relevant standard title
        desc: Relevant standard description
        url:
          en: https://www.example.org
footer: |
  <p>Example footer content.</p>
disclaimer: |
  <p>Example disclaimer content: The law or policy links above go to official versions that may not be very accessible. If you know of more accessible versions, please let us know through the <a href="https://www.w3.org/WAI/policies/submission/">submission form</a> or e-mail to <a href="mailto:email@example.org">email@example.org</a>.</p>
---

This is a minimal header that is used for WAI tools that exist outside the main WAI website. Such tools commonly don't require full WAI navigation or functionality like search.

## Used by

This component is used by:

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)
* WCAG EM Report Tool (2020 rebuild)
* WCAG Supporting Documents redesign project


## Examples

### Example 1: ATAG Report Tool

{% include minimal-header.html title="ATAG Report Tool" %}

### Example 2: WCAG EM Report Tool

{% include minimal-header.html title="WCAG EM Report Tool" %}

### Example 3: WCAG Techniques

{% include minimal-header.html title="WCAG Techniques" %}

## Code

Embedding a header in a Liquid template:

```liquid
{%raw%}{% include minimal-header.html
   title="ATAG Report Tool"
%}{% endraw%}
```

Embedding a header as HTML:

{::nomarkdown}
{% include box.html type="start" title="HTML" class="example simple" %}
{:/}

```html
{% include minimal-header.html
   title="ATAG Report Tool"
%}
```


{::nomarkdown}
{% include box.html type="end" %}
{:/}


### Parameters

`title="ATAG Report Tool"`
: Name of the tool

`class="with-subtitle" subtitle="powered by WAI"`
: Add a subtitle underneath the title
