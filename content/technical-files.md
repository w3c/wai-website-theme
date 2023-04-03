---
title: "Files in Repositories"
permalink: /technical/files/
ref: /technical/files/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-files.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Find out the file structure in a repository:

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}


## Source File Structure

All repositories have a common base structure with the following files
and folders.

When Jekyll runs as part of the build process it creates a new `_site` folder containing the website files.

### Content

These are files containing the site specific content

-   (File) `README.md` – Information about the repository, including a clickable Netlify badge for access to the Netlify preview, logs etc.
- (Folder) `content` – html nd markdown content files that are processed by Jekyll during site build to create web pages.
  - (File) `index.md` – In most repositories content goes into the index.md file or …
  - (File) `other.md` – … other Markdown files in the main directory.
-   (Folder) `content-images/<repo-name>` – static files including images, CSS and JS that appear unprocessed in the website
  +  (File) `social.png` – Default social sharing image.
  +  (… Other files used by the repository …)

Note:  In many repositories content files are still in the root folder rather than the `content` folder. These will be changed over time.

### Shared Content

These are shared between all resource repos and the main website. They are "copied" from the `wai-website-data` repository using git submodules and symlinks. Any changes are made in the other repository and need **careful** coordination if the published site is not to be broken. See below for more details.

-   (Folder) `_data`
    -   (File) `translations.yml` – Translations of the User Interface
    -   (File) `techniques.yml` – WCAG Techniques data (not widely used)
    -   (File) `wcag.yml` – WCAG data (not widely used)
    -   (File) `navigation.yaml` – The sites main navigation. Add your page to the navigation to get left-side navigation and a breadcrumb.

## Technical Infrastructure

Scaffolding. These will not usually be altered by content authors.

-   (File) `w3c.json` – Data for the W3C API.
-   (File) `Gemfile` – A list of ruby gems that are required for the website to work.
-   (File) `Gemfile.lock` – defines which version of each dependency including gems.
-   (File) `_config.yml` – Configures the Jekyll installation, usually not touched after the initial setup.
-   (File) `_config_staging.yml` – Configures the Jekyll installation for Netlify previews.
-   (File) `netlify.yml` - configuration for Netlify previews and local development builds
-   (File) `gitmodules` - configuration for the git submodule(s) tha tappera
-   (Folder) `_external/data` - mount point for the included git submodule `wai-wesbite-data`
-   (Folder) `_data/*` - links to shared files imported as a git submodule via `_external/data`
-   (Folder) `_site` - the generated website files

## wai-website pages

-   (Folder) `pages` - files processed by Jekyll to make wai-website - links to the git submodules
-   (Folder) `_external`
    - (Folder) `data`- mount point for the included git submodule `wai-wesbite-data`. Same as in each resource repo.
    - (Folder) `resources`- mount point for the all the included git submodule resources `wai-*`

### Shared Files

A number of files are shared between all the resources and the published site. For example theme files, translation resources and gem dependencies. Unfortunately, there is currently no way to bundle those files with the theme.

So, for now, these files are held in the [wai-website-data](https://github.com/w3c/wai-website-data) repo which is included as git submodule in all the other repositories that want to use them. The files appear in the `_external` folder. Unfortunately git submodules require several steps to ensure the latest version of these files appear in the using repository, which can cause some extra hoops to jump through.

These files in _external are not directly used, rather the `_data` folder contains symlinks to these shared files which are then used by the code. Again this requires extra manual work for setup but does allow more flexibility, such as using a local file while developing.

To summarise, code in the resource files make references to shared files in `_data` folder. These are actually symlinks to files in the submodule mounted at`_external`. These files are actually copies of files held in the `wai-website-data` repository, at a specific version. Keeping this all up-to-date and working requires commands that need to be run as required, usually as part of a website build step, using GitHub Actions
