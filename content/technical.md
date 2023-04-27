---
title: "Architecture, build and deploy"
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

This page describes the technical services, components and processes used to generate and deploy the WAI website.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Concepts for Content Authors

The website theme and development processes help ensure that the site and every page has a _consistent layout and design_. The architecture and associated development workflow allows us to _develop individual resources in their own GitHub repositories_ using a GitHub Pull Requests with previews provided on Netlify.

The primary technology behind the website is `Jekyll`, a Ruby-based static site generating tool. The “WAI Website Theme” provides page templates, common "components", CSS, plus front-end JavaScript to provide common styling and behaviour. Source files you create for the web pages can include Markdown, HTML, CSS, and Javascript along with the Liquid template language that comes with Jekyll. YAML front matter at the top of pages provides options such as translations. A build process takes the source files and generates the web page files that get deployed.

As a content author you will usually be working on content for one specific part of the WAI website. This usually involves editing HTML or Markdown files in one of the many git repositories that hold the source files. In fact, the WAI site is broken up into *many* modules, called `resources`, each with it's own repository in the W3C GitHub organization. You can easily work in isolation on content files in a repository using either GitHub online features or a local development environment. Netlify Previews alow you to review what you changes will look like when deployed to the WAI website.

You follow a typical GitHub Flow style workflow, working on your own "feature" branch with an associated Pull Request to support collaboration. Netlify automatically generates previews which can be used to see how your resource changes look. Links to the preview are automatically inserted into the Pull Requests for easy access.

Sometimes, you will need to work on files that are shared between all resources, such as the file which defines the site navigation. Plus, if you are creating a new resource it needs to be added to the `wai-website` resource which pulls all the components together to make the complete wai website.

Working on these shared files requires extra care and coordination with the WAI Website Editor as incorrect integration of these multiple parts can break the site.

Usually, when changes become available for publication the the WAI website editor will provide a quick review before carrying out integration or update of the live site. A Netlify preview of the entire site is used to check for problems before the new site is published.

### Site build process

The WAI Website is created using a "build" process that converts the source file content in the resources into the wai website content. It combines all the resources and mixes in the shared files including shared navigation and a theme.

Separate builds are run for the individual resources (repos) previews and the full website to test integration of all resources, and also when the site is published.

While the mechanics of the build are complex, involving Jekyll, git submodules and filesystem symlinks, an overview can be useful to keep in mind:

- source files, mainly in the `content/` folder of a resource, are processed by Jekyll and converted to html:
  - merged with the theme and other surrounding page content such menus and footers
  - use Jekyll layouts, includes and collection files
  - contain Liquid templating language constructs, HTML, CSS, Javascript or markdown
- static content files in the `content-*/` folders are made available unprocessed by Jekyll
- yaml formatted frontmatter (surrounded by ---) in files provides:
  - configuration for the build
  - data values used in template tags in the file content
  - the actual path to the file in the website
- a config.yml file for config shared by many files

## Deep Dive for DevOps

Please see the summary info above.

### Services

A number of services are used to support managing of the the site source, building previews of changes and releasing updates to the live site.

- GitHub
  - contains all the source content, code and configuration
  - supports development workflow based on GitHub flow using Pull Requests
  - primary source of all git repositories for version control
  - issues used for tracking issues (suggestions and bugs), including user supplied
  - actions - AKA workflows, "scripts" that run on GitHub repositories etc
  - releases - used to trigger the primary release action
  - pages - static hosting of site
- W3C services
  - provide redirection so the WAI site appears as part of the W3C site; if there are any redirect requests, these should through the WAI website manager (currently Shawn)
  - an API used as part of the release action to fixup URIs
- Netlify
  - automatic preview sites for Pull Requests
  - a live serverless function used for form processing for list resources
- Local Dev machine
  - optional local builds and testing
  - creating the symlinks used to access in the git submodules for website modules

### Architecture and Previews

The WAI website is a static generated website:

- Pages are pre generated (built) before being deployed. Compared to generated on demand
- The [Jekyll](https://jekyllrb.com/) static site generator (SSG) is used (a Ruby application)
- Source file formats include [Markdown](https://daringfireball.net/projects/markdown/), HTML, CSS and Javascript using the [Liquid](https://shopify.github.io/liquid/) template language
- Template files include front-matter, objects, tags and filters that provide abstractions

### Content Modules or Resources

- The site source files are divided into modules for sections of the site A.K.A. 'resources'
  - Each resource is held in a separate GitHub / git repo
  - One resource, `wai-website` acts as the main for publication and includes all the others
  - Sub-module inclusion for resources and shared data is implemented using git [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
  - Linux [symlinks](https://man7.org/linux/man-pages/man7/symlink.7.html) are used to access the submodules from the source including from a `data` folder
- Each resource (except data) can be individually previewed for development
  - References to other modules will obviously be missing except for in the `wai-website` preview
  - Previews can be built in a local linux development environment (using WSL on Windows) and previewed using the [Netlify CLI](https://cli.netlify.com/)
  - Previews are also built using [Netlify](https://www.netlify.com/products/) Continuous Integration (CI) on GitHub Pull Requests and commits

### Special Modules

- `wai-website-data`, provides shared common files and dependencies (Gems) used by all others. The submodules are all included at `/_external/data` and `/_external/resources/*`
- `wai-website-theme`, provides documentation, shared Jekyll layouts, includes, CSS and JavaScript for components used by all others. These are loaded with a Jekyll "remote-theme" mechanism
- `wai-website` is the main module that pulls together all the other resources to make the entire WAI website
  - git submodules and symlinks ensure that Jekyll sees all the resources
  - A [GitHub Actions](https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions) Workflow builds and publishes the complete site to GitHub Pages which is included in the W3C website at www.w3.org/WAI/
- [wai-resource-template](https://github.com/w3c/wai-resource-template) acts as a GitHub template for creating new resource repos

### Common Configuration Files

Configurations files include:

- git: .gitignore .gitmodules
- Jekyll dependencies: Gemfile Gemfile.lock
- build configuration: _config*.yml
- Netlify: netlify.toml
- w3c metadata: w3c.json

### Git Submodule Use

In a nutshell, git submodules are a way to include a git repo into another (supermodule). The supermodule references a specific commit of each submodule until it is manually updated (using `git submodule update`. Use of submodules thus offers the possibility of referencing any versions of submodules, requiring a commit to persist the submodule state held in the supermodule.

The WAI site uses submodules for subparts of the site and also shared theme files. These are included when building both the section preview and the main site. The HEAD commit (head of default branch) of is always used and this requires all supermodules to be updated to reference the latest submodule as part of the build (local, Netlify or deploy).

### Technical Issues with the Modular Structure

This separation into modules and resources allows independent work on the various sections of the website. However, it also causes a lot of duplication of configuration in each repo and Netlify sites meaning changes to all modules become very time consuming. With the current configuration, changes to shared files may propagate to other resources or the main site earlier than required, for example adding items to the shared navigation will appear in the next site publication.

***NOTE: It may be better to use a monolithic site and build, losing all the links and submodules. However, the build will need to be fast, eg incremental for module development previews.***

## Technical Details

### Design Components, Design Style

[{% include_cached icon.html name="arrow-right" %} Direct link to the Design Components, Design Style.](/components/)

The design style guide shows the application of the design for individual components of the website. If there are changes to a component (HTML/CSS), we can update it in the design style guide and the team. It updates consistently through the WAI website. **Currently** the design style guide only has the HTML rendering of the different components, however, there are often easier ways to get the HTML with includes that are provided by the theme. The advantage is that they automatically update when HTML/CSS changes are necessary.

### Jekyll

[{% include_cached icon.html name="arrow-right" %} Jekyll Website](https://jekyllrb.com)

Jekyll is a static site generator. A site build step takes content source files (in Markdown or HTML) and adds consistent templates to it and generates navigation and then outputs the whole site as static HTML etc pages.

#### Gem Dependencies

As a Ruby application, Jekyll has mechanism to manage dependencies on code modules AKA Gems. In each resource A `Gemfile` specifies the required top-level modules. A `Gemfile.lock` records the actual versions of each module used and those they in turn pull in as determined during the last `bundle install` step. If the lock file is checked into version control it allows deterministic builds with a known versions of everything. At least in theory.

A complication with our modular architecture is that all the preview builds and the main website builds need to use the same versions of all modules to avoid problems. In order lot of duplicate file update housekeeping when Gems change a custom shared Gem is used that specifies the required Gems. If all the Gemfile.locks are generated at the same time everything will use the same version of all modules.

##### Problem with dependencies

However, a `bundle install` or `bundle update` will recalculate all the versions recorded in the `Gemfile.lock`. As the exact version of Gems are not specified, changes can easily creep in, possible breaking builds. For example if the shared Gem is rebuilt.

This happened recently when a new minor version of Jekyll pulled in a new "rouge" gem version that broke the builds, requiring all the `Gemfile.lock` to be updated, in turn causing problems with open PRs. Each active branch in a PR needed the new `Gemfile.lock` to stop broken builds.

***A solution is to specify the version of the top level dependencies in the shared `Gemfile`. Then any bundle commands will use the same versions of all dependencies. However, even that that is not foolproof as it relies of Gem publishers to not change their dependencies for a given version. It will require manual management of version updates, but that is a good thing given the shoddy way some module developers handle version numbers.***

#### Shared files using git submodules and symlinks

Some files need to be shared between all the submodules for preview and the main site for deployment. Others are submodule specific but the main website also needs to access them.

Jekyll is quite limited when it comes to configuration. The current use of git submodules requires use of symlinks in the main `wai-website` to ensure the Jekyll build sees the resource files in the correct location. In addition some files must appear in the same location in both individual resource builds for preview and the full website build. This imposes restrictions on what Jekyll config options are used in the resources. The result is a complex file structure for resources, especially `wai-website`.

- shared files such as `navigation.yml` are located in `_data`
  - these are actually symlinks to the imported git data submodule files in `_external/data`
- other shared theme files are found in a hidden `_includes` and `_layouts` folder provided by the `wai-website-theme` repository and linked remotely (not submodules)
  - these can be locally overridden to debug by creating files in an `_includes` or `_layouts` folder
  - additional resource specific files can be added to a `includes\module-name` or `_layouts\module-name` folder. The module-name is then used when including the files.
- the main site also use `_data`, plus `_includes` and `_layouts`. In addition, the content files are under a `pages` folder with symlinks to `_external/resources/*' to access the content files in all the submodules.
- change to any of these shared file must be pushed to GitHub to be picked up in a build

In particular, be careful to:

- avoid having resource specific `includes` using the `_include` folder
  - includes to be shared between resources should go in the theme resource
  - any includes only to be used by the resource should use `include_relative` (but fails in layouts and can't use `../`)
  - any files in a _resource's `_includes` will also need to be in the website's `_includes`, using symlinks
- avoid using resource specific `_layouts` using the `_layouts` folder
  - layouts to be shared between resources should go in the theme resource
  - any files in a _resource's `_layouts` folder will also need to be in the website's `_layouts` folder, using symlinks
- collections and defaults defined in `_config.yml` will need to be duplicated in the website's `_config.yml`
- collections need to be symlinked from the website `collections` folder (news seems to be a bit odd)
- all pages in resources need to be symlinked from the website `pages` folder
- resource images (and potentially other static files) are symlinked from the website `content-images` folder (watch naming) and appear in the deployed site website `content-images`
- shared static files can go in the theme `assets` folder and will appear in the deployed website `assets` folder

### WAI Website Theme

[{% include_cached icon.html name="arrow-right" %} WAI Website Theme](https://github.com/w3c/wai-website-theme)

The theme ensures that we consistently use the same professional HTML and CSS. It takes the data from the style guide and translates it to something that Jekyll can use to produce the site. The theme is downloaded from the internet whenever a page is (re)generated.

The theme also provides documentation.

NB Changes to CSS source files require a step to build the CSS file provided in the theme. Install and run gulp with
`npm install && npx gulp css` in the project root.

### WAI Website Plugin

[{% include_cached icon.html name="arrow-right" %} WAI Website Plugin](https://github.com/w3c/wai-website-plugin)

In addition to the theme, we use a plugin, mainly for handling translation links.

### YAML Front Matter

[{% include_cached icon.html name="arrow-right" %} WAI Website Front Matter](https://wai-website-theme.netlify.app/writing/frontmatter/)<br>
[{% include_cached icon.html name="arrow-right" %} Jekyll Front Matter](https://jekyllrb.com/docs/front-matter/)<br>
[{% include_cached icon.html name="arrow-right" %} YAML](https://yaml.org/)

We use front matter to provide metadata that is used for generating the ```<title>```, the footer, SEO and social media info, and a lot for translations.

Our source files with the YAML front matter block are processed by Jekyll as a special file.

### GitHub

Whenever a file is changed on GitHub a (for our purposes) draft preview is generated. Pull Request generate separate previews through Netlify. It means you don't have to install anything on your machine to make changes and preview them (although that is possible).

It is a best practice to keep different concerns separated, so we have a lot of different repositories for different resources. It helps us to track feedback through GitHub issues and (for EO) allows participants to just follow the discussion on the repositories relevant to them.

### Git Submodules

Due to these many repositories, the main WAI website needs to collect them all in one repository. To reference those repositories a technology called git submodules is used. It brings in all the files from the submodules' repositories and makes them accessible as files in the main repository. Then,  symbolic links are used to make Jekyll see them. The build steps pull in all the required modules before running the Jekyll build process.

While it seems like an overly complicated way to share the data, it allows us to bring changes in with one command line command, even if several repositories have changed.

In order to see which repository and branch provide a particular submodule inspect the `.gitmodules` file. Adding a new submodule is more complex than just editing this file though. requiring a git command.

### SymLinks

Jekyll is restrictive in terms of file organisation and yet the WAI website architecture is complex with files in many git submodules that need to be processed. The solution used is linux symbolic links (eg as created with "ln -s"). These alow files and directories to actually be "references" to items under various folders `external` in the filesystem. eg pulled into a github submodule directory.

The following symlinks are used

- page content under `pages/` - links to page content processed by Jekyll
  - eg directory wcag-act-rules -> ../_external/resources/wcag-act-rules/content/
  - note the organisation of some links into folders is not critical as the page frontmatter specifies the target pages
- static images files under `content-images/`
  - eg wai-news -> ../_external/resources/wai-news/content-images/wai-news/
- static asset files under `content-assets/`
  - eg wai-aria-practices -> ../_external/resources/wai-aria-practices/content-assets/wai-aria-practices/
- layouts under `_layouts/`
  - eg coga_guide.html -> ../_external/resources/wai-wcag-supplemental/_layouts/coga_guide.html
- includes under `_includes`
  - eg patterns.html -> ../_external/resources/wai-wcag-supplemental/_includes/patterns.html
- collections under `collections/`
  - eg _policies -> ../_external/resources/wai-policies-prototype/_policies/
- data files under `_data`
  - eg navigation.yml -> ../_external/data/navigation.yml

### The wai-website-data repository

Currently we include the wai-website-data repository in every repository to convey common data throughout all the repositories. In detail, we have the following information available:

- Translations of common UI elements
- The website navigation
- WCAG & Techniques (mostly for use with the Tutorials)

This approach brings many problems, mostly for _Microsoft Windows_ users due to the use of “symlinks”. From <mark>Jekyll 4.1</mark> on, [`data` files can be added to the theme](https://github.com/jekyll/jekyll/pull/5470), which will greatly simplify our workflow.

### Netlify Previews

Previews of individual resources are set up in Netlify via GitHub. The credentials for Netlify are available on the [WAI Website page (Team Only)](https://www.w3.org/WAI/Plan/website#accounts). Basically a single Netlify site exists for each resource and is linked to the git hub repo.

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

#### Creating a New Netlify Site

In the [Netlify web app](https://app.netlify.com/teams/w3c/sites), click the "Add new site" dropdown and select "Import an existing project". Click on the GitHub button. Select W3C from the account picker on the top left and search for the repository. Click on the repository in the result list.

On the next page, the configuration from the `netlify.toml` file is already available and the configuration needs only to be saves by clicking the “Deploy site” button.

Netlify creates a random name for the site, which is usually not what one wants. Click site settings on the page that has opened and then select “Change site name”. In the popup, change the name to the GitHub repository name (without `w3c/`).

#### Pull Request Build Notifications

By default, Netlify does not inform users that a Pull Request preview deploys. In the settings for the site, click on “Build & deploy” and make sure the “Branches & deploy contexts” are set like this:

* Production branch: master[^1]
* Branch deploys: Deploy only the production branch
* Deploy previews: Any pull request against your production branch / branch deploy branches

[^1]: This should usually be `master` but generally be the “default branch” as set in GitHub.

Under “Deploy notifications”, use the “Add Notification” dropdown to add three “GitHub pull request comment” Notifications:

* Deploy Preview started
* Deploy Preview succeeded
* Deploy Preview failed

##### Troubleshooting

If expected deploy previews aren't being added to the pull requests as expected, go through the following steps, as it is the default for what is provided by Netlify, to support the feature:

1. Navigate to [https://app.netlify.com/sites/insert_resource_name/settings/deploys#deploy-notifications](https://app.netlify.com/sites/insert_resource_name/settings/deploys#deploy-notifications)
2. Ensure the following outgoing DEFAULT notifications are present:
   1. `Category`: Email Notifications (OPTIONAL)
      1. Email "notifications_email" (seems to usually be `wai+netlify@w3.org`) when deploy request is pending
      2. Email "notifications_email" (seems to usually be `wai+netlify@w3.org`) when deploy request is accepted
      3. Email "notifications_email" (seems to usually be `wai+netlify@w3.org`) when deploy request is rejected
   2. `Category`: GitHub commit checks Notifications
      1. Add rich details to commits when Deploy Preview starts
      2. Add rich details to commits when Deploy Preview succeeds
      3. Add rich details to commits when Deploy Preview fails
   3. `Category`: GitHub pull request comment Notifications
      1. Add Deploy Preview notifications as pull request comments when Deploy Preview starts
      2. Add Deploy Preview notifications as pull request comments when Deploy Preview succeeds
      3. Add Deploy Preview notifications as pull request comments when Deploy Preview fails
      4. Add Deploy Preview notifications as pull request comments when deploy request is pending
      5. Add Deploy Preview notifications as pull request comments when deploy request is accepted
      6. Add Deploy Preview notifications as pull request comments when deploy request is rejected
   4. `Category`: GitHub commit status Notifications
      1. Add Deploy Preview notifications to commits when Deploy Preview starts
      2. Add Deploy Preview notifications to commits when Deploy Preview succeeds
      3. Add Deploy Preview notifications to commits when Deploy Preview fails
3. If any of the above are missing:
   1. Select the "Add Notification" dropdown
   2. Select the related category as listed above
   3. Select the relevant missing event under the "Event to listen for" section and "Save"
4. If these steps were completed with the resource having existing {Rs that were expected to have Deploy Preview but don't, then do the following:
   1. Navigate to [https://app.netlify.com/sites/insert_resource_name/deploys](https://app.netlify.com/sites/insert_resource_name/deploys)
   2. Select a build which was triggered by any of those existing PRs
   3. Select Options, then click "Clear cache and retry with latest branch commit"
   4. Observe that the deploy preview’s link is now commented by the Netlify bot, in the PR
