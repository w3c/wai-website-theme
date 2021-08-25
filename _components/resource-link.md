---
title: "Resource Link"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
inline_css: |
---

This link can be used to link to a resource, for instance a Guideline in an accessibility standard, or a related Technique document. 

## Used by

This component is used by: 

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)

## Code

Embedding your report:

```liquid
{%raw%}{% include resource-link.html
   label="A.3 Editing-views are operable"
   href="https://www.w3.org/TR/ATAG20/#principle_a1"
%}{% endraw%}
```

### Parameters

`href=""`
: Location for this link

`label`
: Link text

## Examples

{% include resource-link.html
   label="A.3 Editing-views are operable"
   href="https://www.w3.org/TR/ATAG20/#principle_a1"
%}

{% include resource-link.html
   label="Implementing A.3.1.1"
   href="https://www.w3.org/TR/IMPLEMENTING-ATAG20/#sc_a311"
%}

{% include resource-link.html
   label="Ada Lovelace"
   href="#"
   noicon="true"
%}
