---
title: HTML page has lang attribute
layout: standalone_resource
standalone_resource_nav_links:
  - name: All Understanding Docs
    ref: https://www.w3.org/WAI/WCAG22/Understanding/
standalone_resource_doc_name: "WCAG 2.2 Understanding Docs"
standalone_resource_header:
  title: ARIA Authoring Practices Guide (APG)
  title-ref: /WCAG2/supplemental/#-cognitiveaccessibilityguidance
  subtitle: How to build accessibility semantics into web patterns and widgets
---

<!--<details class="chooser">
  <summary class="button chooser__button button-secondary">Version
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-down"><polyline points="6 9 12 15 18 9"></polyline></svg>
  </summary>
  <div class="chooser__popout">
    <ul class="chooser__list">
        <li><a href="#">May 26, 2021</a> (Draft)</li>
        <li>March 5, 2020 (current)</li>
        <li><a href="#">February 21, 2019</a></li>
        <li><a href="#">February 21, 2019</a></li>
    </ul>
  </div>
</details>

<style>
.chooser {
  position: relative;
  float: right;
  margin-top: 1em;
}
.chooser__button svg {
  margin-left: .5em;
}
.chooser__popout {
  position: absolute;
  width: 12em;
  right: -0.75em;
  top: 2.9em;
  padding: 1em;
  background: white;
  border: 1px solid var(--line-grey);
  box-shadow: 0px 0px 6px -4px var(--off-black);
}
.chooser__popout::before,
.chooser__popout::after {
  content: '';
  display: block;
  width: 0;
  height: 0;
  border-left: .5em solid transparent;
  border-right: .5em solid transparent;
  border-bottom: .5em solid transparent;
  position: absolute;
  right: 1em;
}
.chooser__popout::before {
  border-bottom-color: var(--line-grey);
  top: -.5em;
}
.chooser__popout::after {
  border-bottom-color: white;
  top: -.4em;
}
.chooser__list {
  margin: 0;
  padding: 0;
  list-style: none;
}
  .chooser__list li {
    margin: 0.5em 0;
    padding: 0.5em 0;
  }
</style>-->

## Accessibility Requirements Mapping

### [3.1.1 Language of Page (Level A)](https://www.w3.org/TR/WCAG21/#language-of-page)

- **Required for conformance** to WCAG 2.0 and later on level A and higher
- [Outcome](#outcome) mapping:
    - Any `failed` outcomes: success criterion is not satisfied
    - All `passed` outcomes: success criterion needs further testing
    - An `inapplicable` outcome: success criterion needs further testing
- [H57: Using language attributes on the html element](https://www.w3.org/WAI/WCAG21/Techniques/html/H57)
    - Not required to conformance to any W3C accessibility recommendation.
    - [Outcome](#outcome) mapping:
        - Any `failed` outcomes: technique is not satisfied
        - All `passed` outcomes: technique needs further testing
        - An `inapplicable` outcome: technique needs further testing

## Applicability

This rule applies to any [document element](https://dom.spec.whatwg.org/#document-element) if it is an `html` element that:

- is in a [top-level browsing context](https://html.spec.whatwg.org/#top-level-browsing-context); and
- has a [node document](https://dom.spec.whatwg.org/#concept-node-document) with a [content type](https://dom.spec.whatwg.org/#concept-document-content-type) of `text/html`.

**Note:** `html` elements within `iframe` and `object` elements are not applicable as `iframe` and `object` elements create [nested browsing contexts](https://html.spec.whatwg.org/#nested-browsing-context). However, as these elements are meant to provide a layer of isolation, the declared language of their [parent browsing context](https://html.spec.whatwg.org/#parent-browsing-context) will likely not be inherited, making it possible for empty `lang` attributes in [nested browsing contexts](https://html.spec.whatwg.org/#nested-browsing-context) to also cause accessibility issues.

## Expectation

Each test target has a `lang` attribute that is neither empty (`""`) nor only [ASCII whitespace](https://infra.spec.whatwg.org/#ascii-whitespace).

## Assumptions

The language of the page can be set by other methods than the `lang` attribute, for example using HTTP headers or the `meta` element. These methods are not supported by all assistive technologies. This rule assumes that these other methods are insufficient to satisfying [Success Criterion 3.1.1: Language of Page](https://www.w3.org/TR/WCAG21/#language-of-page).

## Accessibility Support

_There are no major accessibility support issues known for this rule._

## Background

- [Understanding Success Criterion 3.1.1: Language of Page](https://www.w3.org/WAI/WCAG21/Understanding/language-of-page.html)
- [H57: Using language attributes on the html element](https://www.w3.org/WAI/WCAG21/Techniques/html/H57)
- [BCP 47: Tags for Identifying Languages](https://www.ietf.org/rfc/bcp/bcp47.txt)
- [The `lang` and `xml:lang` attributes](https://html.spec.whatwg.org/multipage/dom.html#the-lang-and-xml:lang-attributes)

## Test Cases

### Passed

#### Passed Example 1

This `html` element has a `lang` attribute with a non-empty (`""`) value.

```html
<html lang="en"></html>
```

### Failed

#### Failed Example 1

This `html` element does not have a `lang` attribute.

```html
<html></html>
```

#### Failed Example 2

This `html` element has a `lang` attribute with an empty (`""`) value.

```html
<html lang=""></html>
```

#### Failed Example 3

This `html` element has a `lang` attribute whose value is only [ASCII whitespace](https://infra.spec.whatwg.org/#ascii-whitespace).

```html
<html lang=" "></html>
```

#### Failed Example 4

This `html` element has no `lang` attribute, only a `xml:lang` attribute.

```html
<html xml:lang="en"></html>
```

### Inapplicable

#### Inapplicable Example 1

This rule does not apply to `svg` element.

```svg
<svg xmlns="http://www.w3.org/2000/svg"></svg>
```

#### Inapplicable Example 2

This rule does not apply to `math` element.

```xml
<math></math>
```

## Acknowledgements

This rule was written in the [ACT Rules community group](https://w3.org/community/act-r/),
with the support of the EU-funded [WAI-Tools Project](https://www.w3.org/WAI/about/projects/wai-tools/).

### Authors

- [Jey Nandakumar](https://github.com/jkodu)

### Previous Authors

- [Annika Nietzio](https://github.com/annika-FTB)

## Changelog

This is the first version of this ACT rule.

