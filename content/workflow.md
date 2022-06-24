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

While developing new content or changing existing content some for of review process will be followed. The content itself will usually be reviewed in details by:

- contributing Workgroup or Taskforce
- EO Workgroup
- WAI Website editor
- external groups

To support this, an editorial workflow is used to alow collaboration and providing automatically generated previews using Netlify.

In addition, the WAI website has a lot of existing content, an extensive information architecture and complex technical requirements.
Any proposed changes need to be compatible across several areas:

- existing content
- editorial style
- user experience
- accessibility
- internationalization
- theme and coding
- information architecture
- technical integration

To ensure quality and compatibility, we extend the workflow to include a level of publication review to check if the content is ready for integration and publication.
Publication reviews may involves:

- website editor
- website technical lead

## GitHub flow

The website content is managed using git version control with GitHub and so we use the light-weight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow) to manage collaboration, review and publication.
In addition the website content is broken up into modules called resources. Each resource has its own GitHub repository from which code is pulled into the full wWAI website.  In outline:

- all work is carried on a "topic" branch
- a GitHub Pull Request is provided for collaboration on the branch contents
  - the Pull request is for a merge to the "Publish" branch described below
  - this can be marked as a draft until ready for publication
- Netlify Integration provides a preview of any updates committed and pushed to the branch

## Publication reviews

- a nominated "publish" branch contains content that goes live when a website release is made
  - this is usually "master" or "main"
- the publish branch is protected so direct commits are not possible
  - changes are made through merging a reviewed Pull Request
- content is reviewed before merging to the "publish" branch for publication.
- when a website release is made all content on resource "publish" branches will be used

Depending on where the content updates come from, the publication review process may vary. It will be as unobtrusive as possible, being designed to meet site quality control and integration requirements of the website. Git Hub supports comments in the pull request during review allowing discussion of any issues that arise. The reviewer may also request changes.

## Branch protection

For the "publish" branch GitHub branch protection settings are used to provide a measure of control of updates and follow W3C practices.
The [protection settings](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) require a pull request for all changes to the branch and also block merging if a pull request does not have an approving review. The exact details of the review vary according to the resources and WAI Team members can override it if required.

## Cleanup

After a pull request has been merged it is deleted in GitHub and the associated branch also deleted. This keeps the repository clean; too many branches make development hard. Note though, that GitHub allows deleted PRs and branches to be restored if ever required.
