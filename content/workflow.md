---
title: "[in-progress] Updating WAI Website Resources"
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

This page describes the process for editors to submit updates to the WAI website.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Overview

This process enables parts of the WAI website to be developed independently through the lightweight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow) with Netlify previews, and publication to be coordinated by the website manager.

Publication branches are [protected](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches). All updates to the WAI website are merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve. Editors provide a single pull request when updates are ready for publication. Scheduled updates are published/deployed on Tuesdays.

## User Interface, Shared Component, and Content Updates

All user interface ideas must be coordinated with the WAI website manager (currently Shawn) &mdash; ideally from the start of the idea, before people get attached to a particular option.

All updates to shared components or other beyond the individual repo &mdash; to the website theme, config files, navigation.yml, etc. &mdash; must be coordinated with the WAI website technical lead before a Pull Request is submitted to the publication branch.

All content updates must be approved by the Working Group that owns the repo content. In some cases, the Working Group has provided blanket approval for some types of updates, such as for some aspects of ACT Rules.

**Editors are responsible for ensuring that everything submitted for publication is indeed ready to publish** &mdash; that it is approved, tested, and carefully quality checked. Website publishers are not able to do thorough reviews before publication.

## Editorial Workflow

* Each Working Group and editorial team defines their own workflow for drafting, reviewing, and submitting updates.
* When an update is ready for publication, the editor merges it into the Ready-to-Publish branch. (Or if there is a single simple update, they can just do a Pull Request as in the next step.)
* When the editor wants the update published, they:
  * Submit a Pull Request to the publication branch, include a summary of the changes that highlights everything that the website manager and/or technical lead needs to particularly be aware of, and assign it to @shawna_slh (and @SteveALee if there are updates that the technical lead needs to be involved in)
  * Add a link to the Pull Request in the Publication Schedule [@@ maybe a wiki page in a new GitHub repo that anyone can edit? or a page in https://www.w3.org/wiki/ except only Members can edit that...], and indicate if the technical lead needs to be involved in this publication or not

## Details

Publication branches are protected, and editable only by W3C staff. In most repos, the publication branch is main or master. All updates to the WAI website will be merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve. As backup, any W3C staff (as W3C organization administrators) can edit or merge into the publication branch.

Resource editors provide updates in a single Pull Request to the publication branch. If there are multiple updates, they can be provided in a Ready-to-Publish branch, with a single Pull Request for that branch to be merged. Only highly-trusted individuals should have write access to the Ready-to-Publish branch. Before updates are made in the Ready-to-Publish branch, content updates have been approved by the Working Group, user interface updates approved by the website manager, and shared component updates approved by the technical lead.

WAI website updates are usually published/deployed on Tuesdays about 13:00UTC. Deploys on other days can be arranged ahead of time. Note that the site manager or maintainers will also likely deploy the site at other times, without prior notice.

<br><hr><hr>
@@ longer draft below  -- maybe not needed? @@

## Overview

These workflows are designed to alow parts of the WAI website to be developed independently and yet control when updates make it into the published WAI website, after a suitable integration review.

## GitHub Flow

The WAI website content is managed using git version control with GitHub and so we use the light-weight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow) to manage collaboration, review, and publication.

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

@@ Steve -- since below is staff-only info, how about we add it to our "Publication of the WAI Website" page instead of here.

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
