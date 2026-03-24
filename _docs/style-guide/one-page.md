---
title: "WAI Style Guide (All-In-One)"
lang: en
---

{% for subpage in site.style-guide %}
<h2>{{ subpage.title }}</h2>
{{ subpage.content | markdownify | replace: 'h2', '!off3' | replace: 'h3', '!off4' | replace: 'h4', '!off5' | replace: '!off', 'h' }}
{% endfor %}