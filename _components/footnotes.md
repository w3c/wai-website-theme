---
title: "Footnotes"
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

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

**This is a Markdown-only feature.**

You can use footnotes to attach notes to the bottom of the page.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html levels="2" %}

## Usage in Markdown

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```markdown
These are two paragraphs[^1] of text with footnotes.

[^1]: A self-contained unit of a discourse in writing, see [Wikipedia](https://en.wikipedia.org/wiki/Paragraph).

As you can see, the footnotes can be anywhere in the text. Here I show how to use a named footnote[^named] instead. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non illo velit aspernatur ratione nulla hic, nihil ea consectetur mollitia tempora reiciendis eos praesentium dolore modi ad illum facilis tempore dolorem.

[^named]: Yes, this footnote is called named.
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

These are two paragraphs[^1] of text with footnotes. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum quam molestias, pariatur blanditiis odit asperiores quidem velit eveniet dolores voluptas, magni cumque autem ipsum excepturi. Dolorum, officia. Et reprehenderit, numquam.

[^1]: A self-contained unit of a discourse in writing, see [Wikipedia](https://en.wikipedia.org/wiki/Paragraph).

As you can see, the footnotes can be anywhere in the text. Here I show how to use a named footnote[^named] instead. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non illo velit aspernatur ratione nulla hic, nihil ea consectetur mollitia tempora reiciendis eos praesentium dolore modi ad illum facilis tempore dolorem.

[^named]: Yes, this footnote is called named.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{% include_cached icon.html name=default %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Change Footnotes Heading

In some resources we might use different headings for the footnotes. For example in the [The Business Case for Digital Accessibility](https://www.w3.org/WAI/business-case/), we use “References”. The title can be specified in the frontmatter:

```yaml
footnotestitle: Resources
```