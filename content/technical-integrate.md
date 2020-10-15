---
title: "Integrating a New Resource into the Main WAI Site Repository"
permalink: /technical/integrate/
ref: /technical/integrate/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-integrate.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

You need to hook the new repository into the main repository as a submodule and create symlinks to the files inside the submodule to make them visible to the main repository’s build process

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Preparation

Make sure you have the latest version of the `wai-website` repository by pulling all changes (example assumes the `wai-website` repository is cloned inside the `~/projects` folder):

```bash
$ cd ~/projects/wai-website
$ git pull
```

## Add Submodule

Add the submodule for the repository that is to be added. This example uses `wai-example-repo` to demonstrate the commands:

```bash
$ git submodule add https://github.com/w3c/wai-example-repo.git _external/resources/wai-example-repo
```

## Add Symlinks

The symlinks (symbolic links) reveal the content of the repository to the main site. Usually the content is inside the `content` folder of the added repository.

```bash
$ ln -s _external/resources/wai-example-repo/content pages/wai-example-repo
```

Content images also need to be symlinked:

```bash
$ ln -s _external/resources/wai-example-repo/content-images/wai-example-repo content-images/wai-example-repo
```

## Add Pages to Navigation

The pages need to be added to the [`navigation.yml` that resides in the `wai-website-data` repository](https://github.com/w3c/wai-website-data/blob/master/navigation.yml).

Once you made the change, run the following command to update the external repositories:

```bash
$ git submodule update --remote
```
