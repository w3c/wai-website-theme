---
title: "Publication of the WAI Website"
permalink: /technical/publication/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/technical-publication.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Publishing the WAI Website is done using a GitHub Action than generates the site and publishes the results to GitHub Pages, then updates the URL mapping on `www.w3.org`.

Quicklinks:
* [Release page](https://github.com/w3c/wai-website/releases/new) - "Tag Version" field: YYYY-MMmmm-DD _e.g, 2021-02Feb-14_, then "Publish release" button
* [Actions monitor](https://github.com/w3c/wai-website/actions)

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

@@
_**{Publication info moved from "Technical Information" page. For Steve or others to edit (or delete if redundant with info later in the page -- or, leave as a summary :-}:**_

Deployment consist of publication to the [main site ](https://www.w3.org/WAI/...) via github pages.

Publication is started by filling in the GitHub new [release form](https://github.com/w3c/wai-website/releases/new) which triggers the GitHub [deploy Action](https://github.com/w3c/wai-website/blob/master/.github/workflows/deploy.yml) to perform the build and deployment. 

The build process consistes of several steps for all repos: 
* checkout git repo including submodule
* install all dependencies (ie Ruby Gems)
* use the Ruby `bundle` command to invoke Jekyll for the build
* deploy / publish to URL.

The GitHub `deploy`action builds and then generates a `manifest.txt`, copies the built static files to github pages rather than let GitHubPages run Jeckyl again and finally invokes `https://www.w3.org/services/update-wai-map'` to update the w3c URL mapping

The GitHub Action runs on ubuntu-latest (currently Focal 20.04) and Netlify uses Xenial (16.04) _{SL:Currently some are on Trusty (14.04). I doubt the variation matters}_

@@

## 1. Generate Site Files

There are two ways to generate the site. 1.1 shows how to do it on GitHub, 1.2 shows how to render it on your local machine for testing.

**1.1 is the method used to deploy the site**, and 1.2 may be useful for experiments or debugging.

{% include excol.html type="start" id="simple" open="true" %}

### 1.1 Generate and Publish Using GitHub Action

{% include excol.html type="middle" %}

#### 1.1.1 Create a Release on GitHub
Go to the [Draft Release page](https://github.com/w3c/wai-website/releases/new). Enter today’s date into the “Tag Version” input field, in the format: `YYYY-MMmmm-DD` e.g, 2020-12Dec-25.

For multiple releases on one day, add a letter to the end: `YYYY-MMmmm-DD-x` with `x` replaced by a letter, starting with a.

Click the “Publish Release” button.

This process starts a [GitHub Action](https://github.com/w3c/wai-website/blob/master/.github/workflows/deploy.yml) which – at the time of writing – automatically performs the following steps:

1. Check out repository
2. Update external resources
3. Commit the updated resources to the repository (if any)
4. Builds the site into the `_site` folder
5. Creates a list of generated resources in [_site/manifest.txt](https://github.com/w3c/wai-website/blob/gh-pages/manifest.txt)
6. Publishes the `_site` folder to [the gh-pages branch](https://github.com/w3c/wai-website/tree/gh-pages)
7. Creates a zip archive of that folder
8. Attaches that zip archive to the release
9. Updates the URL mapping on the W3C site

You can follow the generation of the files in the [Actions tab](https://github.com/w3c/wai-website/actions) on GitHub. Once the generation is done (after about 6–9 minutes), reload the release (from the [releases page](https://github.com/w3c/wai-website/releases)) and you can find that a `build.zip` has been attached to the release:

{% include image.html src="technical-publication-release.png" alt="" %}

**Note:** This build.zip file is not used anywhere and may no longer be needed, but kept for now in case it can help with debugging.

If each step of the GitHub Action has been successful, the newly-generated site should have been published to GitHub Pages and the URL mapping on `www.w3.org` updated to proxy requests for the URLs listed in `manifest.txt` to GitHub Pages instead of being served from W3C's legacy document tree.

Implementation details: [one](https://lists.w3.org/Archives/Team/w3t-sys/2020MayJun/0055.html), [two](https://lists.w3.org/Archives/Team/w3t-sys/2020MayJun/0056.html) (W3C staff-restricted)

#### 1.1.2 Debugging If Something Goes Wrong

Visit the [GitHub Actions page](https://github.com/w3c/wai-website/actions) and click on the most recent run, then click `build` in the left side nav bar. That will show a log of the actions; each one is expandable and will show more details including any errors that came up.

If your expected resource is not available on `www.w3.org`, check that there is an entry for it in [the manifest.txt file](https://github.com/w3c/wai-website/blob/gh-pages/manifest.txt).

If there is no entry for the expected resource in the `manifest.txt` file, there may be an issue with the build process.

If there is an entry in `manifest.txt` but it is not available via www.w3.org, you can check [the map file update tool](https://www.w3.org/services/update-wai-map) to view info about the last update and the number of entries, and click the `Update map file` button to cause it to force a refresh of the map file on W3C's site. This may be necessary if there was a timing issue between the GitHub Pages site being updated and the map file being updated on W3C's site, for example if it took longer than usual for GitHub Pages to be updated.

{% include excol.html type="end" %}

{% include excol.html type="start" id="complicated" %}

### 1.2 Generate Site Locally for Testing

{% include excol.html type="middle" %}

This method should normally not be necessary, but may be useful for those wanting to generate a local copy of the site for testing or experiments.

**Note:** The following steps were tested on a Unix, Max OS and Ubuntu on Windows Subsystem for Linux (WSL) 2. Problems with Ruby and the use of symlinks exclude using Windows native shells. In all cases you will need `git` and `Ruby` installed, on WSL `dev-essentials` was required to build modules.

#### 1.2.1 Locally Clone & Set Up the Repository

The steps in this step 0

Clone the repository to your local computer to build. For example, the following command would clone the repository to your home folder:

```bash
git clone git@github.com:w3c/wai-website.git ~/wai-website
```

Then go to your checked out version of the site:

```bash
cd ~/wai-website
```

then install bundler:

```bash
gem install bundler
```

And install the dependencies. This step with bundler makes sure that everyone has the same versions of Jekyll & Plugins:

```bash
bundle install
```

(Yes, the application is called `bundler`, the command is `bundle`.)

Then, you also need to initialize the submodules:

```
git submodule init
git submodule update --remote
```

#### 1.2.1 Update Submodules

Submodules are links to the individual resources. `wai-website` is our main repository and individual resources like `wai-people-use-web` are then linked to as submodules.

The main repository keeps the structure of the website and then pulls the content from the individual resources.

Please ensure that you have the current version of the repository downloaded. So in your clone of the repository (for example in `~/wai-website`) run:

```bash
git pull
```

Then update the submodules:

```bash
git submodule update --remote && git add _external && git commit -m "Update Externals" && git push
```

This code does four things: It updates the submodules, adds them to a commit, locks that commit in and pushes it back to the server.

#### 1.2.2 Build Site

Occasionally the bundler code is outdated or stops working, in that case run a `bundle update` in the repository folder.

Afterwards, build the site:

```bash
bundle exec jekyll build --config "_config.yml,_config_prod.yml" --incremental
```

This command takes a couple of minutes to run. It outputs certain warnings that can be ignored:

```bash
Invalid theme folder: _sass
WARNING: skipped symlink /private/var/folders/br/73fx4d5s7dbb0j18tqdt6hfh0000gn/T/jekyll-remote-theme-20190924-62884-9cxak3/_data/lang.json
WARNING: skipped symlink /private/var/folders/br/73fx4d5s7dbb0j18tqdt6hfh0000gn/T/jekyll-remote-theme-20190924-62884-9cxak3/_data/techniques.yml
WARNING: skipped symlink /private/var/folders/br/73fx4d5s7dbb0j18tqdt6hfh0000gn/T/jekyll-remote-theme-20190924-62884-9cxak3/_data/translations.yml
WARNING: skipped symlink /private/var/folders/br/73fx4d5s7dbb0j18tqdt6hfh0000gn/T/jekyll-remote-theme-20190924-62884-9cxak3/_data/wcag.yml
```

The generated site is then output in the `_site` sub directory, for example in `~/wai-website/_site/`

{% include excol.html type="end" %}

