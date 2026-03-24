---
title: "WAI Style Guide (All-In-One)"
lang: en
---

{% for subpage in site.style-guide %}
<h2>{{ subpage.title }}</h2>
{{ subpage.content | offset_headings }}
{% endfor %}