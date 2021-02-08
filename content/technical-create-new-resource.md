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

Creating a new resource involves creating a new GitHub repository (from a template), updating the files and then linking into the full site, including navigation.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Creating the Repository

1. Visit the [github.com/new](https://github.com/new)
2. Select w3c/wai-resource-template as the template of the repository.
3. Set the name of the repository to a name starting with `wai-` – usually we use just lowercase letters but sometimes we use camel case
4. Set the visibility setting to public
5. Click on create repository
6. In the new repository, configure as below:

**All content for this resource should be placed inside the `content` folder.**

## Configuring the Repository

After creation, the repository needs to be prepared to make it integrate with Netlify. Those are a couple of manual steps, some must be done in preparation by the repository creator on GitHub (we will try to do configure GitHub actions in the future to work around this).

### Configure Placeholder Settings for the New Repository

In the following places replace `wai-resource-template` with the name of the new repository, eg 'wai-about-wai' NB the links below go to the template on GitHub which should NOT be update:

- [_config.yaml L32](https:/_config.yaml L13]/github.com/w3c/wai-resource-template/blob/master/_config.yml#L32)
- [README.md L1](https://github.com/w3c/wai-resource-template/edit/master/README.md) '...app.netlify.com/sites/wai-resource-template/deploys'

In the following places replace `the text inside the "'s with the URI path of the resource in the final website, eg '/about/:

- [_config.yaml L13](https://github.com/w3c/wai-resource-template/blob/master/_config.yml#L13) 'baseurl: "/wai-resource-template"'
- [netlify.toml L10](https://github.com/w3c/wai-resource-template/blob/master/netlify.toml#L10) 'to = "/link/to/page/"' used in previews

Also update the README.md text to remove the template specific text.

For developers, the easiest way is to check the repository out locally, change all the references EXCEPT [config.yml L36](https://github.com/w3c/wai-about-wai/blob/master/_config.yml#L36) and commit & push it to the server again. (There’s hope that this is automatable at some point in the future.)

### Create and link a Netlify site

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

# Link into the main site

See these [instructions](./technical-integrate/)

# Update navigation

See these [instructions](./technical-navogation/)
