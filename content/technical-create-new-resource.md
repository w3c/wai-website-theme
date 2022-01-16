---
title: "Creating a New Resource"
permalink: /technical/new-resource/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/technical-create-new-resource.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

To start a new resource: create a new GitHub repository from the template, configure the repository, and configure Netlify to work with the repository. You can do all this from your web browser.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Step 1: Create a new repository

Use GitHub to create a new repository using the WAI resource template.

1. Go to this GitHub page: [github.com/new](https://github.com/new)
2. Select `w3c/wai-resource-template` in the 'Repository template' section
3. Type a name of the repository starting with `wai-` (usually we use just lowercase letters but sometimes we use camel case)
4. Set the visibility setting to 'Public'
5. Click 'Create repository' button

A new GitHub repository should be created with the name you selected.

## Step 2: Configure your new repository

### Step 2.1 Create a new branch for your work

Make the configurations in a branch first, and merge that branch with the new configurations into the main branch only once you have tested them in later the steps.

To create a branch in your newly created GitHub repository:

1. Select `Code` tab (below the repository name)
2. Click the branch button (has a branch symbol, the text 'main' or 'master', and a down triangle)
3. Type a new branch name in the search box and hit enter

The branch button should now have the name of the branch you created.

### Step 2.2 Update placeholder references

Several placeholder references in the newly created repository need to be updated, to reflect your repository name. Make these changes in your newly created branch rather than in the main branch.

Replace the text `wai-resource-template` with the name of your new repository in the following files:
- config.yaml (line 13) `baseurl: "/wai-resource-template"`
- config.yaml (line 32) `repository: wai-resource-template`
- README.md (line 1) `...app.netlify.com/sites/wai-resource-template/deploys`
- content/index.md (line 22) `repository: w3c/wai-resource-template`

In content/index.md update:
- /link/to/page/
- /path/to/...
- @@s
- lines with "# NEW" comments

### Step 2.3 Update the images location

Your newly created repository has a folder called `/content-images/wai-resource-template/`, which also needs to change to your repository name. Also make this change in your newly created branch first.

To change the folder name:

1. Go to the file called `.gitignore` in the folder called `/content-images/wai-resource-template/`
2. Click the edit button (a pencil symbol)
3. Go to the text field with the text `.gitignore` (above the 'Edit file' pane)
4. Replace the text `.gitignore` with `../your-repository-name/.gitignore` (using your actual repository name in place of `your-repository-name`)
5. Click 'Commit changes' button (towards the bottom of the page)

You should now have a folder called `/content-images/your-repository-name/` in your repository (where `your-repository-name` is your actual repository name).

### Step 2.4: Set permissions (Settings, Manage access)

- From the action list (starting with Code, Issues,...), select "Settings" (at the end).
- From the secondary list (after Options), select "Manage access".
- Select the button "Invite teams or people".
- Set the appropriate permissions. Err on the side of lower-level access for starters; we can change it easily. Example permissions:
   - w3c/wai-eo : Read
   - non-Team editors : Triage (or Write if highly trusted)

## Step 3: Create and link a Netlify site for preview

Netlify allows you to preview the content, including draft content in branches, as it would look when it is deployed on the WAI website. To configure such Netlify previews for your repository:

1. Login into [Netlify site page](https://app.netlify.com/teams/w3c/sites)
2. Make sure `W3C Team` is selected top left, rather than your own personal team (ask to be added to the team if required)
5. Click 'New site from Git' button
6. Click 'GitHub' button
7. Authenticate to GitHub, select 'w3c' organization
8. Type your repository name into the search box and hit enter
9. Click on your repository name in the search results
10. Click 'Deploy Site' button
11. Click 'Site settings' button
   - In 'General - Site details' (you should be taken there), click 'Change site name' button and enter your repo name
   - In 'Build & deploy', scroll down to 'Post processing - Form detection', click 'Edit settings' button, uncheck 'Run form detection', and click 'Save' button

To view the resource preview

- Click on 'Deploys' in top navigation bar
- You should get the message 'Production: master@HEAD Published' - wait for the deploy to complete if the message is other than 'Published'
- Click on 'Production' to get to the preview

## Step 4: Create your content

You will almost certaily want to develop and preview locally though it is possible to use the GitHub file editor. You can use use a Linux/Mac shell, or WSL on Windows.

**NOTE: In order to facilitate sharing and review with others use a GitHub PR for your work. Mark it is  "Draft". When it is ready to publish on the WAI website, coordinate with Shawn or other website maintainer, as described below.**

Content in the main branch is assumed ready to be deployed on the WAI website. Therefore, create a new branch for your draft content &mdash; for example: "Version 1". You can follow Step 2.1 to create a new branch. When you create the pull request (to see the preview), create it as a "Draft pull request".

Put your content in the folder called `content`, and images in the folder `content-images/your-repository-name/`. Your new repository has an initial file called `content/index.md`, which you can use as a template. This file has frontmatter many configuration parameters that you need to set for every new file that you create. It also has different styles and functionality that you can reuse.

In particular, replace the text `/link/to/page/` (on lines 24 and 32) in every file with the path of where your page will appear on the WAI website (you may not know this at the beginning of the project and you can do it later too). Also update the mappings in the file `netlify.toml` (on line 10) when you are ready.

Also, update the README.md text to remove the template specific lines below the netlify badge, and to provide documentation.

### Local preview of your content

The easiest way to build and preview locally is to use the [Netlify CLI](https://cli.netlify.com/) tool. The resources are configured so you can 

- `Netlify build` - generate the website file in the `_site` directory
- `Netlify dev` - run a dev server and preview `_site` 

### Editing shared config files

The theme and other shared config files in `wai-website-theme` are accessed via git submodules located in `_external`. While it is certainly possible to use git submodule operation to locally edit these while developing, this is complex and to be honest, a dangerous 'footgun'.

For some files it is possible to create a temporary local `_includes`, `_layouts` or `_collections` folder to overide theme files or add new ones. When the resource is ready to be published these files should be merged into the shared files in `wai-website-theme`.

## Publishing approved content

When the content is approved for publication, change the pull request from "draft" to "ready to review" and inform Shawn or or other WAI site maintainer (usually best to assign in GitHub and send e-mail).

Shawn or other WAI site maintainer will:
* Merge into the main branch.
* Go to the GitHub [Add Resource Workflow](https://github.com/w3c/wai-website/actions?query=workflow%3A%22Add+Resource%22) for the wai-website and click the 'Run workflow' Button. Enter the repository name - eg. `wai-about-wai` and click 'Run workflow'' again. Wait for the Workflow to complete.
* Add the resource to`navigation.yml` per the [instructions](../navigation).
