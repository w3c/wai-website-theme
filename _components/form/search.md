---
title: "Search Form"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
inline_css: |
---

<form action="…" class="searchform">
    <label for="tipue_search_input">Search:</label>
    <input type="search" name="q" id="tipue_search_input" pattern=".{3,}" title="At least 3 characters" required>
    <button class="button button--icon" type="submit">
      <span>Search</span>
    </button>
</form>

{% include excol.html type="start" id="" %}

## Source Code

{% include excol.html type="middle" %}

```html
<form action="…" class="searchform">
    <label for="tipue_search_input">Search:</label>
    <input type="search" name="q" id="tipue_search_input" pattern=".{3,}" title="At least 3 characters" required>
    <button class="button button--icon" type="submit">
      <span>Search</span>
    </button>
</form>
```

{% include excol.html type="end" %}