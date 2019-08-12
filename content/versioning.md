---
title: "Versioning of Resources"
permalink: /versioning/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/versioning.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
doc-note-type: draft
doc-note-message-md: |
  This page is a rough draft with a lot of aloud thinking, feedback is _very_ welcome.
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

To communicate clearly when a page has changed, we want to use a numbering system that determines the version.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include toc.html type="start" title="Page Contents" %}
{:/}

- This will be replaced by an automatically generated TOC when using Markdown formatting.
{:toc}

{::nomarkdown}
{% include toc.html type="end" %}
{:/}

## Semantic Versioning

In programming [Semantic Versioning](https://semver.org/) (or “semver”) is often used to keep track of the features. This has a very granular scheme:

> Given a version number MAJOR.MINOR.PATCH, increment the:
> 
> 1. MAJOR version when you make incompatible API changes,
> 2. MINOR version when you add functionality in a backwards compatible manner, and
> 3. PATCH version when you make backwards compatible bug fixes.
> 
> Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

As documents published by W3C/WAI (mostly through EOWG) are fairly stable, such a detailed version scheme seems too complicated.

## Date-based Versions

Many apps and other software products that get continuously updated use a year.month naming scheme. An app released in November 2019 would be version 2019.11.

As we rarely make significant changes to WAI documents, I propose adopting this scheme:

## WAI Document Versioning Scheme {#wdv}

* When publishing use `year-month`, similar to above. So, November 2019 would be `2019-11`. 
* Typos and other insignificant _corrections_ add a letter to the end of the version number: `2019-11a`, `2019-11b` etc.
* If there have been significant changes, change the version number. For example, if a paragraph changes in meaning in March 2020, change the number to `2020-03`.

Using `a`-`z` for minor changes should give us enough revision options.

### Documenting Changes

* For minor changes, links to the GitHub issues and commits are completely sufficient.
* For bigger changes, links to the EOWG minutes and a short explaining text are best practices.

A change log document could look like this (the following underlined text are symbolically linked and not actually links):

* 2020-03: Added a paragraph about ARIA support (<u>#77</u>). 
* 2019-11b: Changed order of sentence to be more logical <u>#62</u>.
* 2019-11a: Fixed typos <u>#13</u>, <u>#51</u>, <u>#23</u>.
* 2019-11: Rewrite based on new information, see <u>Requirements Analysis</u>, <u>EOWG decisions</u>, <u>Request for Publish Results</u>.
