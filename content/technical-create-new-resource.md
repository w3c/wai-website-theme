---
title: "Creating a New Resource"
permalink: /technical/new-resource/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-create-new-resource.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Creating a new resource involves creating a new GitHub repository (from a template), updating the files and then linking into the full site, including navigation. These steps can all be performed online in a web browser.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Creating the Repository

Use the GitHub tool to create a new repository from the WAI resource template. Note the repository name is the same as the resource name.

1. Visit the [github.com/new](https://github.com/new)
2. Select w3c/wai-resource-template as the template of the repository.
3. Set the name of the repository to a name starting with `wai-` – usually we use just lowercase letters but sometimes we use camel case
4. Set the visibility setting to public
5. Click on create repository
6. In the new repository, configure as below:

**All content for this resource should be placed inside the `content` folder.**

## Configuring the Repository

All development work is performed on a git branch. A Netlify preview of the branch is available for testing. When the code is ready it is merged to the main branch. The assumption is that the main branch is always ready to be deployed.

Note that while the new resource will have an initial index.html in the master branch this will not actually be available until the follow changes are made and merged into master.

### Create a new branch for your work

In the GitHub page for your new repository:

- Select `code`
- Click the branch button (A branch symbols, the text 'main' or 'master' and a down triangle)
- Type a new branch name in the box and hit enter

### Update Placeholder Text for the New Resource Name

Several pieces of placeholder text in the new files needs to be replaced for the new resource to be available in the previews and published site.

In the following places replace `wai-resource-template` with the new resource name, eg 'wai-about-wai' NB the links below go to the template on GitHub which should NOT be update:

- [_config.yaml L13](https://github.com/w3c/wai-resource-template/blob/master/_config.yml#L13) 'baseurl: "/wai-resource-template"'
- [_config.yaml L32](https://github.com/w3c/wai-resource-template/blob/master/_config.yml#L32) 'repository: wai-resource-template'
- [README.md L1](https://github.com/w3c/wai-resource-template/edit/master/README.md) '...app.netlify.com/sites/wai-resource-template/deploys'
- [content/index.md L22](https://github.com/w3c/wai-resource-template/edit/master/content/index.md) '  repository: w3c/wai-resource-template' (more changes to this file below)

To rename the image folder name browse to ` wai-resource-template/content-images/wai-resource-template/.gitignore` and click on the pencil to edit. In the filename edit box and replace the `.gitignore` with  `../` and enter the resource name. Save the file

In the following places replace the `/link/to/page/` text with the URI path the resource will have in the website, eg '/about/.

- [netlify.toml L10](https://github.com/w3c/wai-resource-template/blob/master/netlify.toml#L10) 'to = "/link/to/page/"' used in previews
- [content/index.md L24](https://github.com/w3c/wai-resource-template/edit/master/content/index.md) '  permalink: /link/to/page/ '
- [content/index.md L32(https://github.com/w3c/wai-resource-template/edit/master/content/index.md) '  ref: /link/to/page/'

Also, update the README.md text to remove the template specific lines below the netlify badge.

For developers, the easiest way is to check the repository out locally, change all the references EXCEPT [config.yml L36](https://github.com/w3c/wai-about-wai/blob/master/_config.yml#L36) and commit & push it to the server again. (There’s hope that this is automatable at some point in the future.)

## Create and link a Netlify site for preview

For now these are just text instructions. Hopefully this can be automated.

- Login into [Netlify site page](https://app.netlify.com/teams/w3c/sites) with access to the 'W3C team' team
- Click 'New site from git' button
- Click 'GitHub' button
- Authenticate to GitHub, select 'w3c' organisation and type your repo name into the search box, hit enter
- Click on the repo name
- Click on 'Deploy Site' Button
- In General Settings - Site details (you should be taken there) click 'Change site name' button and enter your repo name
- In Build & Deploy Settings - Post processing - Form detection  click 'Edit settings' button and uncheck 'Run form detection'

To view the resource preview

- Click on deploys in top nav'
- You should see 'Production: master@HEAD published, if not wait for the deploy to complete
- Click on 'Production' to see the preview

## Link into the main site

Goto the GitHub [Add Resource Workflow](https://github.com/w3c/wai-website/actions?query=workflow%3A%22Add+Resource%22) for the wai-website and click the "Run workflow" Button. Enter the resource name - eg 'wai-about-wai) and click "Run workflow" again. Wait for the Workflow to complete

## Add the Resource to the Navigation

NB that the navigation.yml file is shared by all previews and the published site so must only be changed one the new resource is ready ot be published.

See these [instructions](./technical-navigation/)
