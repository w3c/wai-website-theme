---
title: "Working on an Existing Resource"
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
  path: content/technical-existing-resource.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Working on an existing resource can be done in GitHub or in a local development environment.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

The documentation section [Create and Edit Documents](/writing/) describes working with content.

## Editing in GitHub

This method requires no setup and may be preferred by content authors. All file editing can be done int the GitHub Web App. Jus tNavigate toe the in the resource repo. Files can also be renamed and new files created.

The main disadvantage is each changed file will require its own separate commit. Also, the Netlify preview is regenerated for each commit, which can be slow.

## Using a Local Development Environment

This provides faster edit-preview cycle and allows multiple file changes to be grouped into a single commit. It is also possible to use tooling like VS Code to give syntax highlighting, pretty printing, validation and more. However, does it require a little technical setup and possible familiarity with developer tooling. Develop working on aspects of the site beyond content will want to use the approach.

Note there are problems with running Jeckyll on Windows. And anyway, both the GitHub release workflow and the Netlify builds run on linux. So linux or Mac OS platform is really required. However, WSL on Windows is perfectly satisfactory for command line only access.

### Get the Resource source code from GitHub

Use the command line or a graphical git client (GitHub for macOS/Windows, Sourcetree, Tower…) to clone the repository.

For the “Fundamentals Overview” repository, you would use the following command:

```bash
$ git clone git@github.com:w3c/wai-fundamentals-overview.git
```

The git URL is available by clicking the green ”Clone or download” button on the repository main page, for example: [https://github.com/w3c/wai-fundamentals-overview](https://github.com/w3c/wai-fundamentals-overview)

### Install Use the Netlify CLI package

The netlify CLI package allows you to easily build and preview the resource locally.

* install [NodeJS](https://nodejs.org/en/) (this includes npm)
* install the [Netlify CLI](https://docs.netlify.com/cli/get-started/)

### Install and Initialize Jekyll

You can follow the [official instructions](https://jekyllrb.com/docs/installation/) but I found on WSL Ubuntu the most reliable (and flexible)  method of installing Ruby and Jeckyll appears to be use [rvm](https://rvm.io/). Once Ruby, Jeckyll and bundle are setup:

Initializing Jekyll happens on the command line:

```bash
$ bundle install
```

### Serve and preview the website

The easiest way (but without live reload) is:

```bash
$ netlify build && netlify dev
```

Alternatively, to preview changes, run the following command line program to start a local server

```bash
$ bundle exec jekyll serve --livereload
```

Use `--incremental` to only update the changed pages. This is useful for big repositories:

```bash
$ bundle exec jekyll serve --livereload --incremental
```

### Manually Managing Submodules

The netlify CLI build command will initialise all submodules to the latest version on GitHub. The `.gitmodules` specifies which branch is ised for each and can be edited if you need to work on any submodule dependencies. This is the recommended way to work with submodules. However, you can manually manage when the submodules are refreshed fromGitHub.

From your graphical git client, you should be able to “Update all Submodules”.

This is how it works on the command line when you cloned the project for the first time:

```bash
$ git submodule update --init --recursive
```

This inits submodules in your local projects (creates the directories) and recursively fetches the data.

When you already have an existing clone (i.e. the second time on this machine) and want to get the latest version of all submodules, run:

```bash
$ git submodule update --remote
```

See also: [Git - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

