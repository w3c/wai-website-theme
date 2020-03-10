---
title: "Checkout an Existing Resource"
permalink: /technical/existing-resource/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-checkout-existing-resource.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Checking out a new resource for the first time needs some command line tweaks before it can be built, to set it up locally on your computer.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Checking out the Repository

Use the command line or a graphical git client (GitHub for macOS/Windows, Sourcetree, Tower…) to clone the repository.

For the “Fundamentals Overview” repository, you would use the following command:

```bash
$ git clone git@github.com:w3c/wai-fundamentals-overview.git
```

The git URL is available by clicking the green ”Clone or download” button on the repository main page, for example: [https://github.com/w3c/wai-fundamentals-overview](https://github.com/w3c/wai-fundamentals-overview)

## Initialize Submodules

From your graphical git client, you should be able to “Update all Submodules”. On the command line, this line of code does it:

```bash
$ git submodule update --remote
```

## Initialize Jekyll

Initializing Jekyll happens on the command line:

```bash
$ bundle install
```

## Run Jekyll

To preview changes, run the following command line program to start a local server

```bash
$ bundle exec jekyll serve --livereload
```

Use `--incremental` to only update the changed pages. This is useful for big repositories:

```bash
$ bundle exec jekyll serve --livereload --incremental
```
