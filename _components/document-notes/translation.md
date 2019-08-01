---
title: "Document Notes: Translations"
lang: en
translators: # Uncomment (remove #) for translations, one - name line per translator.
- name: Translator 1
- name: Translator 2
contributors:
- name: Contributor 1
- name: Contributor 2
footer: > # Text in footer in HTML
   This is the text in the footer
last_updated: 2019-08-01
---

The message for the translation is automatically generated on the translated pages and reads as follows (in the translated language): 

## Up-to-Date Translation

<section class="doc-note-box doc-note-translation">
  <h2 class="visuallyhidden">{% include t.html t="About this Translation" %}</h2>
  <p>{% assign replacepattern = page.url | relative_url | prepend: "$1|"  %}{% include t.html t='This volunteer translation might not accurately reflect the intentions of the <a href="$1">English original</a>.' replace=replacepattern %}</p>
  <p>{% include_cached icon.html name="check-circle" %} {% include t.html t='Translation up-to-date with the English version.' %}
    <br>{% include t.html t='Translation updated:' %} <span dir="auto">{{page.last_updated | date: "%Y-%m-%d"}}</span>. {% include t.html t='English updated:' %} <span dir="auto">{{page.last_updated | date: "%Y-%m-%d"}}</span>.
   </p>
  <p>
    {%- capture translatorslabel %}<strong>{% include t.html t='Translator:' %}</strong>{%- endcapture %}
    {% include peoplelist.html label=translatorslabel people=page.translators %}
    {%- capture contributorslabel %}{% include t.html t='Contributor:' %}{%- endcapture %}
    {% include peoplelist.html label=contributorslabel people=page.contributors %}
    {%- assign replacepattern = "/about/translating/" | relative_url | prepend: "$1|" -%}
    <br>{% include t.html t='WAI thanks translators, and welcomes other <a href="$1">translations</a>.' replace=replacepattern %}</p>
</section>

## Outdated Translation


<section class="doc-note-box doc-note-translation">
  <h2 class="visuallyhidden">{% include t.html t="About this Translation" %}</h2>
  <p>{% assign replacepattern = page.url | relative_url | prepend: "$1|"  %}{% include t.html t='This volunteer translation might not accurately reflect the intentions of the <a href="$1">English original</a>.' replace=replacepattern %}</p>
  <p>{% include_cached icon.html name="warning" %} {% include t.html t='English version updated since this translation: <a href="$1">Change log</a>.' replace=changelogpagereplace %}
    <br>{% include t.html t='English updated:' %} <span dir="auto">{{page.last_updated | date: "%Y-%m-%d"}}</span>. {% include t.html t='Translation updated:' %} <span dir="auto">{{page.last_updated | date: "%Y-%m-%d"}}</span>.
  </p>
  <p>
    {%- capture translatorslabel %}<strong>{% include t.html t='Translator:' %}</strong>{%- endcapture %}
    {% include peoplelist.html label=translatorslabel people=page.translators %}
    {%- capture contributorslabel %}{% include t.html t='Contributor:' %}{%- endcapture %}
    {% include peoplelist.html label=contributorslabel people=page.contributors %}
    {%- assign replacepattern = "/about/translating/" | relative_url | prepend: "$1|" -%}
    <br>{% include t.html t='WAI thanks translators, and welcomes other <a href="$1">translations</a>.' replace=replacepattern %}</p>
</section>