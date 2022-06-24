---
title: "Making Changes"
permalink: /workflow/
ref: /workflow/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/workflow.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

The process used to propose, review and publish updates to the WAI website.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Overview

These workflows are designed to alow parts of the WAI website to be developed independently and yet control when updates make it into the published WAI website, after a suitable integration review.

## GitHub Flow

The WAI website content is managed using git version control with GitHub and so we use the light-weight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow) to manage collaboration, review and publication.
Architecturally, the website content source is broken up into modules called resources.
Each resource has its own GitHub repository supporting an isolated development with previews up to the point it is ready for publication.

Each resource supports two distinct workflows using GitHub pull requests and two branches:

- Editorial workflow using a "ready for publication" branch
- Publication workflow using a specified "publish" branch (currently mostly master or main)

## Editoral Workflow

While developing new content or changing existing content within a resource the content will be reviewed by some of:

- contributing Workgroup or Taskforce
- EO Workgroup
- WAI Website editor
- external groups

The resource's editorial workflow is as follows:

- all work is carried on a "topic" branch
- a GitHub Pull Request is used to support collaboration on and preview of commits pushed to the branch
- if there is only going to be a single pull request it can be made directly to the "publish" branch
- multiple pull requests are made to a "ready" for publication branch (not the "publish" branch)
  - once ready, pull request are merged to the "ready" branch
  - later a pull request to "publish" from the "ready" branch can be made
- Netlify Integration with pull requests provides previews which update as commits are made to the pull request branch
- the Publication Review workflow is started with a pull request to the "publish" branch
- WAI team are added as pull request reviewers so they are notified via GitHub

## Publication Workflow

The WAI website has a lot of existing content spread across the many resources as well as shared assets like the theme.
As the builds process pulls in all these content sources a best practice is to change one thing at a time.
Additional complexity arises form the need to integrate and check the following areas:

- fit with existing content
- editorial style
- user experience
- accessibility
- internationalization
- theme and coding
- information architecture
- technical integration

Thus we need a controlled publication review workflow to check if the content is safe to integrate and ready for publication. This will usually be performed by:

- website editor
- website technical lead

The process is:

- one or more resources have their pull request to the "publish" branch reviewed
- required matching changes to shared resources like the theme are made - possibly on branches
- changes to the wai-website _config are made
- for new resources a git submodule and symblinks are added to wai-website
- the "publish" branch is merged
- the Netlify wai-website preview is built and tested
- the site is published using a GitHub release which triggers a GitHub Action
- the changes are tested on the live site

## Branch protection

GitHub [branch protection settings](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) avoid errors caused by workflow shortcuts being taken. A set of restrictions are applied to specific branches.

A resource  "ready" branch is not protected and can be used as the resource editors like.

The "publish" branch is protected to require a pull request and direct commits are not possible. Only WAI team can merge to it so they can control when changes are pulled into the wai website.

WAI Team members can always override the protections if required.

## Cleanup

After a pull request has been merged it is deleted in GitHub and the associated branch also deleted. This keeps the repository clean; too many branches make development hard. Note though, that GitHub allows deleted PRs and branches to be restored if ever required.
