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

## Working with Resources

The wai website is composed of pages in "resources". Each resource is contained in it's own GitHub repository and can be worked on in isolation with a preview provided by Netlify.

The following articles describe the technical aspects of working with resources.

- [Creating a New Resource](/technical/new-resource/)
- [Working on an Existing Resource](/technical/existing-resource/)
- [Updating WAI Website Resources](/workflow/)

To create a new page in an existing repository:
* Usually it is best to start with the [template](https://raw.githubusercontent.com/w3c/wai-resource-template/master/content/index.md) to get the latest frontmatter.
* Check another page in the repo to help you get the right info for the frontmatter.

## Design Components and Style Guide

* [Design Components](/components/) has things like boxes, table options, and much more.
* [Style Guide](https://www.w3.org/WAI/EO/wiki/Style) has punctuation, editorial style, etc.
* Images are covered in two places: [Design Components, Images]( https://wai-website-theme.netlify.app/components/images/) and [Create and Edit Documents, Images](/writing/images/) <br>_{<mark>@@To Do:</mark> Figure out if these should separate, or be combined. If separate, make sure they appropriately point to each other.}_
* Note that **links need to be done a specific way** for translations. See [link markdown explanation in the in the template](https://github.com/w3c/wai-resource-template/blob/master/content/index.md#heading-level-2)

## Changelogs

There are two main purposes for changelogs:
1. To help update a translated resource.
2. To inform people of substantive changes to a resource.

What to include in the changelog depends on translation status:
* If no one has started a translation, then the changelog only needs to include substantive changes.
* If a translation is published or in-progress, then the changelog also needs to include guidance for updating the translation, including things that are not substantive yet should be updated.

Write the changelog primarily to support updating translations. To help others find substantive changes, include "significant" in the heading and list the changes in bold. For example, [changelog for Standards page](https://www.w3.org/WAI/standards-guidelines/changelog/).

## Example and some explanation

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
