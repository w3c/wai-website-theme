---
title: "Create and Edit Documents"
permalink: /writing/
ref: /writing/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Use Markdown (or HTML) to write content for the website, add meta information to the “Frontmatter” of the documents.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{% include toc.html %}

## Example

This is probably the most bare bones example of a document:

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```md
---
title: "My Example Document"
permalink: /some/path/
ref: /some/path/
lang: en
---

This is content for my **Example** Document.
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}

The area between the two lines of three dashes (`---`) is called “Frontmatter”. It contains all the meta-information for the page and everything that is usually not visible in the content of the page.

Here, the `title` will be used in the (HTML) page `title`, and as an `<h1>`. the `permalink` will set where a document can be reached on the WAI website, here: `https://www.w3.org/WAI/some/path/` – it is relative from `/WAI/`.

The `ref` is equal to the `permalink` in English resources, translated resources have a different `permalink` but the same `ref` as in English. That allows us to refer to a page regardless of translation. `lang` sets the language.

Everything after the second line of three dashes is Markdown (or HTML) content and output in the content area of the document. That is the area you are reading right now. Hello!

As this documentation uses the same system as the main WAI website, click on “Fork & Edit on GitHub” below to see the source code for this page.

{::nomarkdown}
{% include box.html type="start" title="Detailed information on…" class="large linklist" %}
{:/}

* [{%include_cached icon.html name="arrow-right" %} <span class="visual-a">Frontmatter</span>](/writing/frontmatter/)
* [{%include_cached icon.html name="arrow-right" %} <span class="visual-a">Markdown</span>](/writing/markdown/)
* [{%include_cached icon.html name="arrow-right" %} <span class="visual-a">WAI Markdown Extensions</span>](/writing/wai-markdown/)
* [{%include_cached icon.html name="arrow-right" %} <span class="visual-a">Using HTML</span>](/writing/html/)
{:.linklist}

{::nomarkdown}
{% include box.html type="end" %}
{:/}