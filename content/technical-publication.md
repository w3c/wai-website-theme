---
title: "Publication of the WAI Website"
permalink: /technical/publication/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-publication.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

Publishing the WAI Website is a series of mostly manual steps that ensure no data is overwritten unintentionally.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

**Note:** The following steps were tested on a Unix machine. If you want to generate the website on Windows, using the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) is probably the way to go, albeit untested.

## 0. Locally clone & set up the repository

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
git submodules init
git submodule update --remote
```


## 1. Update submodules

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

## 2. Generate Site

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

## 3. Copy Generated Site to CVS Directory

You can now copy all changed files to the CVS directory. **Important note:** Do not overwrite the directories in the CVS directory as they contain (sometimes hidden) CVS folders with _critical_ meta information. 

**Merge the files into the CVS directory carefully.**

Some file managers have ways to help you with it, for example here’s a screen shot of the macOS software Forklift:

The screen shot shows two columns, on the left the source directory, on the right the target directory, shown are only files that changed. This would also show files that are added to the target directory. Deleted files are deliberately not shown as the W3C/WAI directory has hundreds of files not included in the `wai-website` repository. Those files should not be removed.

In the event of having a page deleted, the publisher needs to go into CVS **by hand** and delete that file. Otherwise it **will remain online**.

{% include image.html src="technical-publication-merge.png" alt="" %}

### Signs of when the merge would break the site:

* Unless the template has changed, if all files are shown as new/to be replaced, you probably did not compile with the `_config_prod.yml` file added to the configuration.

## 4. Commit to CVS

**Make sure that your copy of the files in `WWW/WAI` is up to date.**

Use the command line or a CVS client of your choice to commit the added/updated files to the server. The following screen shot shows the macOS software SmartCVS.

It is set to show only modified and new files from all sub directories to make committing easier.

{% include image.html src="technical-publication-cvs.png" alt="" %}

You can add a commit message.

{% include image.html src="technical-publication-cvs2.png" alt="" %}