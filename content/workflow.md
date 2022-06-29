---
title: "[in-progress] Updating WAI Website Resources"
permalink: /workflow/
ref: /workflow/
lang: en
feedbackmail: wai@w3.org
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

This process enables parts of the WAI website to be developed independently through the lightweight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow), and enables all publication on the WAI website to be coordinated by the website manager.

* One branch in each repository is designated as the "**publication**" branch. Publication branches are lightly [protected](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) so that all changes to the WAI website are merged only by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve.
* Editors provide a single pull request to the publication branch when updates are ready for publication.
* Scheduled updates are usually published/deployed on Thursdays.

## Workflow

* Each Working Group and editorial team defines their own workflow for drafting, reviewing, approving, and submitting updates.
  * Pull request used during development  are made to the default branch or other branches, NOT the publication branch.
  * Netlify previews are available for all pull requests.
  * Editors and/or project managers ensure [early coordination on user interface, shared component, and content updates](#coop), per below.
* When the editor wants updates published, they:
  * Create a single pull request to the "**publication**" branch.
    * Include a brief summary of the changes. Explain everything that the website manager and/or technical lead needs to particularly be aware of.
    * Include details on any shared components or other things that need updating outside this resource repo. For example,  Liquid variables provided in the resource's `_config.yml` file that need to be copied across to the wai-website repo.
    * Assign it to @shawna_slh.
    * If there are updates that the technical lead needs to be involved in, also assign it to @SteveALee.
  * Add a link to the pull request in the Publication Schedule _{@@ maybe a wiki page in a new GitHub repo that anyone can edit? or a page in https://www.w3.org/wiki/ except only W3C Members can edit that. How many editors requesting publication are not Members and don't have easy access to a Member to Team to write to that wiki?}_
    * Indicate if the technical lead needs to be involved in this publication or not.
* When the updates are published, the publisher does an initial check that things worked, and adds a comment in the pull request so the editors can do additional checks.

## Coordinating User Interface, Shared Component, and Content Updates {#coop}

**Editors are responsible for ensuring that everything submitted for publication is indeed ready to publish** &mdash; that it is approved, tested, and carefully quality checked. Website publishers are not able to do thorough reviews before publication.

* All user interface ideas must be coordinated with the WAI website manager (currently Shawn) &mdash; ideally from the start of the idea, before people get attached to a particular option.

* All updates to shared components or other beyond the individual repo &mdash; to the website theme, config files, navigation.yml, etc. &mdash; must be coordinated with the WAI website technical lead before a pull request is submitted to the publication branch.

* All content updates must be approved by the Working Group that owns the repo content. In some cases, the Working Group has provided blanket approval for some types of updates, such as for some aspects of ACT Rules.

## Details

Publication branches are protected, and editable only by W3C staff. All updates to appear in the WAI website are on this branch and will be merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve. As backup, any W3C staff (as W3C organization administrators) can edit or merge into the publication branch. To enable this, resource editors and other non-W3C-team have maximum repository access privileges "write".

Resource editors provide updates in a single pull request to the publication branch. If there are multiple updates, they can be provided in the default branch (usually main or master), with a single pull request for that branch to be merged into the publication branch.

Only highly-trusted individuals should have write access to the default branch. Before updates are made in the default branch, content updates have been approved by the Working Group, user interface updates approved by the website manager, and shared component updates approved by the technical lead.

WAI website updates are usually published/deployed on Thursdays about 13:00UTC. Deploys on other days can be arranged ahead of time. Note that the site manager or maintainers will also likely deploy the site at other times, without prior notice.

Editors work with the WAI site manager and technical lead to coordinate on considerations for:
* fit with existing content
* editorial style
* user experience
* accessibility
* internationalization
* theme and coding
* information architecture
* technical integration

## [draft in-progress] Site-Wide Components {#components}

WAI website components:
* [https://github.com/w3c/wai-website-theme/](https://github.com/w3c/wai-website-theme/) - Jekyll theme
* [https://wai-website-theme.netlify.app/components/](https://wai-website-theme.netlify.app/components/) - descriptions of design components
* [https://github.com/w3c/wai-minimal-header-design/](https://github.com/w3c/wai-minimal-header-design/) - used for report tools, supplemental guidance, ACT Rules, ARIA APG

Currently issues related to these components are in different places. We are in the process of moving all issues to: [https://github.com/w3c/wai-website/issues/](https://github.com/w3c/wai-website/issues/) so they are in one place. We will use labels to group them.

Please put any new issues in [https://github.com/w3c/wai-website/issues/](https://github.com/w3c/wai-website/issues/) &mdash; and feel free to move existing issues there, too.
