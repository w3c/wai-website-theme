---
title: "Document Notes: Translations"
lang: en
last_updated: 2024-11-04

# Do not remove the following lines, used by the examples.
translation:
  status: outdated
  last_updated: 2022-01-04

translators:
- name: Translator 1
- name: Translator 2
contributors:
- name: Contributor 1
- name: Contributor 2
---

The message for the translation is automatically generated on the translated pages and reads as follows (in the translated language):

## Up-to-Date Translation

<section class="doc-note-box doc-note-translation">
    <h2 class="visuallyhidden">{% include_cached t.html t="About this translation" lang=page.lang %}</h2>
    <p>
      {%- assign replace_pattern = page.url | relative_url | prepend: "$1|" -%}
      {%- include t.html t='This volunteer translation might not accurately reflect the intentions of the <a href="$1">English original</a>.' replace=replace_pattern lang=page.lang -%}
    </p>
    <p>
      {%- capture translatorslabel %}<strong>{% include_cached t.html t='Translator:' lang=page.lang %}</strong>{%- endcapture %}
      {%- include peoplelist.html label=translatorslabel people=page.translators -%}
      {%- capture contributorslabel %}{% include_cached t.html t='Contributor:' lang=page.lang %}{%- endcapture -%}
      {%- include peoplelist.html label=contributorslabel people=page.contributors -%}
      <br />
      {%- assign replace_pattern = "/about/translating/" | relative_url | prepend: "$1|" -%}
      {%- include_cached t.html t='The Web Accessibility Initiative (WAI) thanks translators, and welcomes other <a href="$1">translations</a>.' replace=replace_pattern lang=page.lang -%}
    </p>
</section>

## Outdated Translation

<section class="doc-note-box doc-note-translation">
  <h2 class="visuallyhidden">{% include_cached t.html t="About this translation" lang=page.lang %}</h2>
  <p>
    {%- assign replace_pattern = page.url | relative_url | prepend: "$1|" -%}
    {%- include t.html t='This volunteer translation might not accurately reflect the intentions of the <a href="$1">English original</a>.' replace=replace_pattern lang=page.lang -%}
  </p>
  <p>
    {%- capture translatorslabel %}<strong>{% include_cached t.html t='Translator:' lang=page.lang %}</strong>{%- endcapture %}
    {%- include peoplelist.html label=translatorslabel people=page.translators -%}
    {%- capture contributorslabel %}{% include_cached t.html t='Contributor:' lang=page.lang %}{%- endcapture -%}
    {%- include peoplelist.html label=contributorslabel people=page.contributors -%}
    <br />
    {%- assign replace_pattern = "/about/translating/" | relative_url | prepend: "$1|" -%}
    {%- include_cached t.html t='The Web Accessibility Initiative (WAI) thanks translators, and welcomes other <a href="$1">translations</a>.' replace=replace_pattern lang=page.lang -%}
  </p>
  {%- if page.translation.status == "outdated" -%}
    <div class="translation-needs-update">
      <p>{% include_cached icon.html name="warning" %} <strong>{% include_cached t.html t='Notice:' lang=page.lang %}</strong> {% include t.html t='The English original has been substantially updated since this translation.' lang=page.lang %}{%- if changelog_page %} &mdash; <a href="{{ changelog_page.url | relative_url }}">{%- include_cached t.html t="Latest changes" lang=page.lang -%}</a>{%- endif -%}
      <br />{% include_cached t.html t='English version updated:' lang=page.lang %} <span dir="auto">{{ page.last_updated | date: "%Y-%m-%d" }}</span> — {% include_cached t.html t='Translation date:' lang=page.lang %} <span dir="auto">{{ page.translation.last_updated | date: "%Y-%m-%d" }}</span>.
      <br />{% include_cached t.html t='We welcome a <a href="$1">translation update</a>.' lang=page.lang replace=replace_pattern %}</p>
      </div>
  {%- endif -%}
</section>

## Draft Translation

<section class="doc-note-box doc-note-translation doc-note-translation--draft">
  <h2 class="visuallyhidden">{% include_cached t.html t="About this translation" lang=page.lang %}</h2>
  <p class="translation-draft">
    {%- include t.html t='This translation is a draft. We welcome your comments via GitHub or email from the links below under <a href="#helpimprove">Help improve this page</a>.' -%}
  </p>
  <p>
    {%- assign replace_pattern = page.url | relative_url | prepend: "$1|" -%}
    {%- include t.html t='This volunteer translation might not accurately reflect the intentions of the <a href="$1">English original</a>.' replace=replace_pattern lang=page.lang -%}
  </p>
  <p>
    {%- capture translatorslabel %}<strong>{% include_cached t.html t='Translator:' lang=page.lang %}</strong>{%- endcapture %}
    {%- include peoplelist.html label=translatorslabel people=page.translators -%}
    {%- capture contributorslabel %}{% include_cached t.html t='Contributor:' lang=page.lang %}{%- endcapture -%}
    {%- include peoplelist.html label=contributorslabel people=page.contributors -%}
    <br />
    {%- assign replace_pattern = "/about/translating/" | relative_url | prepend: "$1|" -%}
    {%- include_cached t.html t='The Web Accessibility Initiative (WAI) thanks translators, and welcomes other <a href="$1">translations</a>.' replace=replace_pattern lang=page.lang -%}
  </p>
</section>
