---
title: "Button Group"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
order: 1
group: atoms
inline_css: |
---

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Group Buttons using a Button group `div`. The buttons are stretched to take up the available space using CSS Flexbox.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}<div class="button-group">
  {% include_cached button.html name="link" href="https://example.com/" label="Email" %}
  {% include_cached button.html name="link" href="https://example.com/" label="Fork &amp; Edit on GitHub" %}
  {% include_cached button.html name="link" href="https://example.com/" label="List of GitHub Issues" %}
  {% include_cached button.html name="link" href="https://example.com/" label="New GitHub Issue" %}
</div>{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

<div class="button-group">
  {% include_cached button.html name="link" href="https://example.com/" label="Email" %}
  {% include_cached button.html name="link" href="https://example.com/" label="Fork &amp; Edit on GitHub" %}
  {% include_cached button.html name="link" href="https://example.com/" label="List of GitHub Issues" %}
  {% include_cached button.html name="link" href="https://example.com/" label="New GitHub Issue" %}
</div>

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
<div class="button-group">
  {% include_cached button.html name="link" href="https://example.com/" label="Email" %}
  {% include_cached button.html name="link" href="https://example.com/" label="Fork &amp; Edit on GitHub" %}
  {% include_cached button.html name="link" href="https://example.com/" label="List of GitHub Issues" %}
  {% include_cached button.html name="link" href="https://example.com/" label="New GitHub Issue" %}
</div>
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
