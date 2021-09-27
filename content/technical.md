---
title: "Technical Information"
permalink: /technical/
github:
  repository: w3c/wai-website-theme
  path: content/technical.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This page outlines the fundamental technical processes and the general approach for the website.

The site uses Jekyll, a Ruby-based site generating software. “WAI Website Theme” is a Jekyll theme with HTML templates, CSS, and (very few) scripts. Source files for the web pages can include Markdown, HTML, CSS, and Javascript using the Liquid template language. We use YAML front matter for several things, including translations.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

The goal for the documentation is to ensure that the site and every page has a _consistent layout and design_ and allows us to _edit individual resources in their own GitHub repositories_. The process also allows the rendering of previews on Netlify.

## A Summary for Content Authors ##

As a content author you will usually be working on content for one part of the WAI website. This can be accomplished by editing HTML or Markdown files in one of the many git repositories that hold the source files. In fact, the WAI site is broken up into *many* modules, called `resources`, each with it's own repository in the W3C's github organization. You can work in isolation on content files in a repository using either GitHub online features or a local development environment. Sometimes you might also work on static files like images or even CSS or javascript.

In this case you can follow a typical github style workflow, working on a branch which is eventually merged into a main branch and pushed to GitHub once ready for deployment. This last step should be performed in coordination with the WAI website editor. To support content development, Netlify provides previews which can be used to see how your resource changes look.

Sometimes however, you will need to work on files that are shared between all resources, such as the file which defines the site navigation. Plus, if you are creating a new resource it needs to be added to the "master" resource which pulls all the components together to make the complete wai website.

Working on these shared files requires extra care and coordination with the Editor as integration of these multiple parts needs coordination to avoid a broken site.

### Site build ###

The WAI Website is created using a "build" process that converts the source file content in the resources into the wai website content. It combines all the resources and mixes in the shared files including navigation and a theme (visual styling). The build is used to both generate the resource previews and when the site is deployed.

While the mechanics of this build are complex, involving jekyll, git submodules and filesystem symlinks, an overview can be useful to keep in mind:

- source files in the `content/` folder of a resource are processed so they are:
  - converted to the final html using the liquid templating engine
  - merged with the theme and other surrounding page content such menus and footers
- static content files in the `content-images/` folder are made available unprocessed to other website files
- source files contain yaml formatted frontmatter (surrounded by ---) which provides:
  - configuration for the build
  - data values used in template tags in the file content
  - the actual path to the file in the website

## Architecture and Previews ##

- A static website site (AKA jamstack)
  - All pages are pre generated before being deployed
  - The [Jekyll](https://jekyllrb.com/) static site generator (SSG) is used (a Ruby application)
  - Source file formats include [Markdown](https://daringfireball.net/projects/markdown/), HTML, CSS and Javascript using the [Liquid](https://shopify.github.io/liquid/) template language
  - Liquid template files include front-matter, objects, tags and filters that provide abstractions
- The site source files are divided into modules for sections of the site A.K.A. 'resources'
  - Each resource is held in a separate git repo
  - One module, `wai-website` acts as the main which includes all the others
  - Sub-module inclusion for resources and shared data is implemented using git [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
  - Another module, `wai-website-data`, provides shared common theme files and dependencies (Gems) used by all others. The submodules are all included at `/_external/data` and `/_external/resources/*`
  - Linux [symlinks](https://man7.org/linux/man-pages/man7/symlink.7.html) are used to access the submodules from the source including from a `data` folder
- Each resource (except data) can be individually previewed as if part of the full site
  - References to other modules will obviously be missing except for the `wai-website` preview
  - Previews can be built in a local linux development environment (using WSL on Windows) and previewed using the [Netlify CLI](https://cli.netlify.com/)
  - Previews are also built using [Netlify](https://www.netlify.com/products/) Continuous Integration (CI) on GitHub Pull Requests and commits
  - A [GitHub Actions](https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions) Workflow builds and publishes the complete site to GitHub Pages which is included in the W3C website at www.w3.org/WAI/
- Configurations files include:
  - git: .gitignore .gitmodules
  - jekyll dependencies: Gemfile Gemfile.lock
  - build configuration: _config*.yml
  - Netlify: netlify.toml
  - w3c metadata: w3c.json
- One module [wai-resource-template](https://github.com/w3c/wai-resource-template) acts as a GitHub template for creating new resource repos

This separation into modules and resources allows independent work on the various sections of the website. However, it also causes a lot of duplication of configuration in each repo and Netlify site meaning changes to all modules become very time consuming. With the current configuration, changes to shared files may propagate to other resources or the main site earlier than required, for example adding items to the shared navigation will appear in the next site publication.

### Submodule Use

In a nutshell, submodules are a way to include a git repo into another (supermodule). The supermodule references a specific commit of each submodule until it is manually updated (using `git submodule update`. Use of submodules thus offers the possibility of referencing any versions of submodules, requiring a commit to persist the submodule state held in the supermodule.

The WAI site uses submodules for subparts of the site and also shared theme files. These are included when building both the section preview and the main site. The HEAD commit (head of default branch) of is always used and this requires all supermodules to be updated to reference the latest submodule as part of the build (local, Netlify or deploy).

Currently the main site supermodule state of submodules is committed during deploy. However, previews are not currently commited at all so get out of date. This will be addressed soon. Probably by creating a new Github Actions workflow to update and commit all the supermodules.

## Design Components, Design Style

[{% include_cached icon.html name="arrow-right" %} Direct link to the Design Components, Design Style.](/components/)

Just as with virtually every other design style guide, this design style guide shows the application of the design for individual components of the website. If there are changes to a component (HTML/CSS), we can update it in the design style guide and the team. It updates consistently through the WAI website. **Currently** the design style guide only has the HTML rendering of the different components, however, there are often easier ways to get the HTML with includes that are provided by the theme. The advantage is that they automatically update when HTML/CSS changes are necessary.

## Jekyll

[{% include_cached icon.html name="arrow-right" %} Jekyll Website](https://jekyllrb.com)

Jekyll is a static site generator. That basically means that it takes content files (in Markdown or HTML) and adds consistent templates to it and generates navigation and then outputs the whole site as static HTML pages.

### Configuration

Jekyll is quite limited when it comes to static site generation configuration. The use of git submodules requires the use of symblinks in the main  `wai-website` to ensure Jekyll build sees the resource files in the correct location. This is imposes restrictions on what Jekyll config options are used in the resources. In particular, be careful to:

- avoid having resource specific `includes` using the `_include` folder
 - includes to be shared between resources should go in the theme resource
 - any includes only to be used by the resource should use `include_relative` (but fails in layouts and can't use `../`)
 - any files in a _resource's `_includes` will also need to be in the website's `_includes`, using symblinks
- avoid using resource specific `_layouts` using the `_layouts` folder
 - layouts to be shared between resources should go in the theme resource
 - any files in a _resource's `_layouts` folder will also need to be in the website's `_layouts` folder, using symblinks
- collections and defaults defined in `_config.yml` will neeed to be duplicated in the website's `_config.yml`
- collections need to be symblinked from the website `collections` folder (news seems to be a bit odd)
- all pages in resources need to be symblinked from the website `pages` folder
- resource images (and potentially other static files) are symblinked from the website `content-images` folder (watch naming) and appear in the deployed site website `content-images`
- shared static files can go in the theme `assets` folder and will appear in the deployed website `assets` folder

### WAI Website Theme

[{% include_cached icon.html name="arrow-right" %} WAI Website Theme](https://github.com/w3c/wai-website-theme)

The theme ensures that we consistently use the same professional HTML and CSS. It takes the data from the style guide and translates it to something that Jekyll can use to produce the site. The theme is downloaded from the internet whenever a page is (re)generated.

The theme also has this information stored and displayed, which makes it easy to update

### WAI Website Plugin

[{% include_cached icon.html name="arrow-right" %} WAI Website Plugin](https://github.com/w3c/wai-website-plugin)

In addition to the theme, we use a plugin, mainly for handling translation links.

### YAML Front Matter

[{% include_cached icon.html name="arrow-right" %} WAI Website Front Matter](https://wai-website-theme.netlify.app/writing/frontmatter/)<br>
[{% include_cached icon.html name="arrow-right" %} Jekyll Front Matter](https://jekyllrb.com/docs/front-matter/)<br>
[{% include_cached icon.html name="arrow-right" %} YAML](https://yaml.org/)

We use front matter to provide metadata that is used for generating the ```<title>```, the footer, SEO and social media info, and a lot for translations.

Our source files with the YAML front matter block are processed by Jekyll as a special file.

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
