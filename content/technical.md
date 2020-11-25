---
title: "Technical Information"
permalink: /technical/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This page outlines the fundamental technical processes and the general approach for the website. The goal for the documentation is to ensure that the site and every page has a _consistent layout and design_ and allows us to _edit individual resources in their own GitHub repositories_. The process also allows the rendering of previews on Netlify.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Design Components, Design Style

[{% include_cached icon.html name="arrow-right" %} Direct link to the Design Components, Design Style.](/components/)

Just as with virtually every other design style guide, this design style guide shows the application of the design for individual components of the website. If there are changes to a component (HTML/CSS), we can update it in the design style guide and the team. It updates consistently through the WAI website. **Currently** the design style guide only has the HTML rendering of the different components, however, there are often easier ways to get the HTML with includes that are provided by the theme. The advantage is that they automatically update when HTML/CSS changes are necessary.

## Jekyll

[{% include_cached icon.html name="arrow-right" %} Jekyll Website](https://jekyllrb.com)

Jekyll is a static site generator. That basically means that it takes content files (in Markdown or HTML) and adds consistent templates to it and generates navigation and then outputs the whole site as static HTML pages.

### WAI Website Theme

[{% include_cached icon.html name="arrow-right" %} WAI Website Theme](https://github.com/w3c/wai-website-theme)

The theme ensures that we consistently use the same professional HTML and CSS. It takes the data from the style guide and translates it to something that Jekyll can use to produce the site. The theme is downloaded from the internet whenever a page is (re)generated.

The theme also has this information stored and displayed, which makes it easy to update

### WAI Website Plugin

[{% include_cached icon.html name="arrow-right" %} WAI Website Plugin](https://github.com/w3c/wai-website-plugin)

In addition to the theme, we use a plugin, mainly for handling translation links. This plugin does not work on GitHub pages, which means non-working links and left-over square brackets (`[`,`]`).

## GitHub

Whenever a file is changed on GitHub a (for our purposes) draft preview is generated. Pull Request generate separate previews through Netlify. It means you don't have to install anything on your machine to make changes and preview them (although that is possible).

It is a best practice to keep different concerns separated, so we have a lot of different repositories for different resources. It helps us to track feedback through GitHub issues and (for EO) allows participants to just follow the discussion on the repositories relevant to them.

### Git Submodules

Due to these many repositories, the main WAI website needs to collect them all in one repository (that is called [wai-website](https://github.com/w3c/wai-website)). To reference those repositories a technology called git submodules is used. It brings in all the files from the submodules and makes them accessible in the main repository. Then, I use symbolic links to make Jekyll see them.

While it seems like an overly complicated way to copy the data, it allows us to bring changes in with one command line command, even if several repositories have changed.

#### The wai-website-data repository

Currently we include the wai-website repository in every repository to convey common data throughout all the repositories. In detail, we have the following information available:

- Translations of common UI elements
- The website navigation
- WCAG & Techniques (mostly for use with the Tutorials)

This approach brings many problems, mostly for _Microsoft Windows_ users due to the use of “symlinks”. From <mark>Jekyll 4.1</mark> on, [`data` files can be added to the theme](https://github.com/jekyll/jekyll/pull/5470), which will greatly simplify our workflow.

## Netlify

Previews of individual resources are set up in Netlify via Github. The credentials for Netlify are available on the [WAI Website page (Team Only)](https://www.w3.org/WAI/Plan/website#accounts).

The preview should be viewable under `<github-repo>.netlify.app`. The configuration is set in the `netlify.toml` configuration file that includes the following information:

```toml
[build]

command = "bundle exec jekyll build --config '_config.yml,_config_staging.yml'"
publish = "_site"

[[redirects]]
  from = "/"
  to = "/permalink/of/main/resource/page/"
```

Change the permalink and commit the file to the repository.

### Creating a New Netlify Site

In the [Netlify web app](https://app.netlify.com/teams/w3c-wai/sites), click the “New site from Git” button, click on GitHub. Select W3C from the account picker on the top left and search for the repository. Click on the repository in the result list.

On the next page, the configuration from the `netlify.toml` file is already available and the configuration needs only to be saves by clicking the “Deploy site” button.

Netlify creates a random name for the site, which is usually not what one wants. Click site settings on the page that has opened and then select “Change site name”. In the popup, change the name to the github repository name (without `w3c/`).

### Pull Request Build Notifications

By default, Netlify does not inform users that a Pull Request preview deploys. In the settings for the site, click on “Build & deploy” and make sure the “Deploy contexts” are set like this:

* Production branch: master[^1]
* Deploy previews: Automatically build deploy previews for all pull requests
* Branch deploys: Deploy only the production branch

[^1]: This should usually be `master` but generally be the “default branch” as set in GitHub.

Under “deploy notifications”, use the “add notification” dropdown to add three “GitHub pull request comment” notifications:

* Deploy Preview started
* Deploy Preview succeeded
* Deploy Preview failed
