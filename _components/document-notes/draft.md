---
title: "Document Notes: Draft"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
   This is the text in the footer
doc-note-type: draft
doc-note-message-md: This is the **message** for this document.
---

This type of document note is specified in the frontmatter of the document:

```yaml
...
doc-note-type: draft
doc-note-message-md: This is the **message** for this document.
...
```

You can also use HTML:

```yaml
...
doc-note-type: draft
doc-note-message: <p>This is the <strong>message</strong> for this document.</p>
...
```