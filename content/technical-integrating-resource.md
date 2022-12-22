---
title: "Integrating a Resource"
permalink: /technical/integrating-resource/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-integrating-resource.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This section covers the steps to correctly integrated a resource into the wai-website. Both for new resources and updates to existing resources.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

As described in [Architecture, Builds and Deployments](/technical) the modular WAI website architecture adds considerable complexity to a typical Jekyll built website. In particular, git submodules and filesystem symbolic links are used to ensure Jekyll finds all files needed to build the site. This in turn, places requirements on file layout in both individual resources and the wai website. Additionally, some parts of the Jekyll config for each resource are copied over to the wai website Jekyll config.

Resources are created using a template which helps ensure the file layout is correct. However editors are unlikely to understand all the constraints so may make changes which can be incompatible and need correcting for successful integration.

## Overview of Integration Steps

The following outlines the steps for integrating a new resource. Updating an existing resource may require a subset of these steps depending on what changes have been made.

Note: in general it is easiest to perform all this work locally, working on both the resource and wai-website code using Netlify CLI to preview. However it is probably possible to do most steps using the GitHub web app and Netlify console (the exception being managing symblinks which require a *nix Shell).

Note: The following steps work directly on the wai-website main branch and resource designated 'publication' branch. It may well be preferable to work on temporary branches for both before merging to commit to the changes ready for the release. This requires fiddling with the submodule config but is fairly straight forward.

1. verify resource respository and files
1. review page frontmatter and config.yml
1. note designated 'publication' branch of the resource
1. ensure a mergable PR to the publication branch with working Netlify preview
1. merge the PR in GitHub
1. add resource's GitHub repo to wai-website submodules list
1. pull the submodule code into the wai-website
1. create symblinks to integrate the new content into wai-website
1. update the config.yml file to include the new resource.
1. check wai-website preview looks good
1. push wai-website
1. release wai website
1. check deployment

In the following `wai-resource` is a placeholder for the resource name - eg `wai-course-list`

## Verify resource repository and files

- The git hub repository is `https://github.com/w3c/wai-resource`.

These are the folders and files required for integration, some are optional. Note many assets are shared and so accessed via the wai-website-theme or _data submodule resources. Those found here are resource specific

- content/ - Jekyll page source with frontmatter
  - filesystem organisation is not important as Jekyll spiders
  - target URI is in frontmatter
- content-images/wai-resource/ - static image assets
  - target URI is /content-images/wai-resource/
- content-assets/wai-resource/ - other static assets
  - target URI is /content-assets/wai-resource/
- _includes/wai-resource - Jekyll includes
- _layouts - Jekyll layouts
- _collections - Jekyll collections
- _plugins - ruby plugins for liquid
- _data/wai-resource - Jekyll data files
- _data/* - must be symblinks to the data git submodule
- Gemfile - may include resource specific Gems
- config.yml - Jekyll config

NB: The files that are direct children of `_data` must all be links to the included wai-website-data git submodule files. Otherwise resource specific changes have been made and will be lost in integration.

## Review page frontmatter and config.yml

Minimal frontmatter is as follows.

```yaml
title: .....
permalink: /.../...
feedbackmail: wai@w3.org
github:
  repository: w3c/wai-resource
  branch: main
  path: content/filename
```

config.yml is mostly template but some sections will need to be copied to the wai-website config.file, with slight modification. See below.

## Note designated 'publication' branch of the resource

The workflow dictates that one git branch will be the publication branch. The content of this branch will appear in the wai-website when it is built. Critically, this is the branch used by the git submodule command.

Check carefully as this may or may not be the GitHub 'default' branch.

## Ensure a mergable PR to the publication branch with working Netlify preview

The workflow is PR based so there should be a open PR attempting to merge changes onto the publication branch. The integrated Netlify Preview should have been used to confirm the content renders correctly. It is possible to access GitHub PRs locally via git but as it's slightly fiddly the working preview for the PR is preferable.

All the above checks should pass in the PR.

## Merge the PR in GitHub

Merge in GitHub means the production branch is up to date ready for the git submodule access. The wai-website preview and publication will then access it.

## Add resource's GitHub repo to wai-website submodules list

The wai-website file `.gitmodules` lists each resource submodule's repositry URL on GitHub and the branch. However, the new resource can't be added by just editing the file. A git command needs to be run:

```bash
git submodule add -b production-branch https://github.com/w3c/wai-resource.git _external/resources/wai-resource
git add .
git commit -m"add wai-resource submodule"
```

Confirm by viewing the 'gitmodules' files.

## Pull the submodule code into the wai-website

The following will update all submodules as well as fetching the new one:

```bash
git submodule update --init --remote
```

Check the code now exists at '_external/wai-resource/.

## Create symblinks to integrate the new content into wai-website

The process is to cd to the directories that will hold the link and then "ln -s" to the target file/directory under "_external". The various folders are listed above.

```bash
cd _data
ln -s ../_external/data/navigation.yml navigation.yml
ls -l
```

`$ navigation.yml -> ../_external/data/navigation.yml`

Note: links under "pages" link to the resource's "content/" folder. Thus file changes in the resource do not require link updates to wai-website. Some old links are done per file which makes maintenance a headache.

## Update the config.yml file to include the new resource.

config.yml is mostly template but the following sections will need to be copied, with slight modification

- collections
- defaults:

### Collections

 Just copy the section contents eg

```yaml
collections:
  patterns:
    title: Patterns
    permalink: /WCAG2/supplemental/:collection/:name/
    output: true
    sort_by: ref
```

### Defaults

The issue is that in the resource the config is for the entire website, where as in the wai-website it becomes one sub part. So for example:

```yaml
defaults:
  - scope:
      path: ""
    values:
      layout: standalone_resource
      standalone_resource_header:
        title: Supplemental Guidance to WCAG 2
```

becomes

```yaml
defaults:
    scope:
      path: "pages/wai-wcag-supplemental"
    values:
      layout: standalone_resource
      standalone_resource_header:
        title: Supplemental Guidance to WCAG 2
```

## Check wai-website preview looks good

You can of course do a local build and preview of the wai-website using the Netlify CLI (with `ntl build && ntl dev`).

It is also possible to manually trigger build on Netlify [wai-website deploys page](https://app.netlify.com/sites/wai-website/deploys).

## pPush wai-website

The Netlify preview for the entire wai-website will also build when the new master branch contents are pushed to GitHub.

See the [wai-website deploys page](https://app.netlify.com/sites/wai-website/deploys).

## Release wai website

In GitHub create a new release which runs  GitHub action to build the site and deploys it via GitHub pages and a W3C site redirect.

https://github.com/w3c/wai-website/releases

## Check deployment

Check the WAI website is correctly updated.

https://www.w3.org/WAI/

Note: sometimes new pages DO NOT appear when the should. The current theory is indeterminate delays in the GitHub publication to pages mean the final w3c publish step doesn't see the new pages. If this occurs then wait and then run publish.
