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

This process enables parts of the WAI website to be developed independently through the lightweight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow) with Netlify previews. Publication is coordinated with and managed by the website manager.

One branch in each resource module's repository is nominated as the "publication" branch. Any content in this branch will appear in the published WAI website. Publication branches are lightly [protected](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) so that all updates destined for the next WAI website release are only merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve. Editors provide a single pull request when updates are ready for publication. Scheduled updates are published/deployed on Tuesdays.

## User Interface, Shared Component, and Content Updates

All user interface ideas must be coordinated with the WAI website manager (currently Shawn) &mdash; ideally from the start of the idea, before people get attached to a particular option.

All updates to shared components or other beyond the individual repo &mdash; to the website theme, config files, navigation.yml, etc. &mdash; must be coordinated with the WAI website technical lead before a Pull Request is submitted to the publication branch. Also note that Liquid variables provided in the resource's `_config.yml` file must be copied across to the wai-website repo or they will will be lost.

All content updates must be approved by the Working Group that owns the repo content. In some cases, the Working Group has provided blanket approval for some types of updates, such as for some aspects of ACT Rules.

**Editors are responsible for ensuring that everything submitted for publication is indeed ready to publish** &mdash; that it is approved, tested, and carefully quality checked. Website publishers are not able to do thorough reviews before publication.

## Editorial Workflow

* Each Working Group and editorial team defines their own workflow for drafting, reviewing, and submitting updates.
* All update work is carried out on a "feature" branch". Several may be in progress at any time.
  * It is highly recommended that feature branches have an associated Pull Request set to be a "draft" during development. This will ensure the Netlify Preview is available and eases collaboration
* When an update is ready for publication, the editor merges it into the staging ((Ready-to-Publish) branch. (Or if there is a single simple update, they can just do a Pull Request for their update branch as in the next step.)
* When the editor wants the update[s] published, they:
  * Submit a new Pull Request to the publication branch (or remove the "draft" status from an existing Pull Request to the publication branch). The Pull Request must include a summary of the changes that highlights everything that the website manager and/or technical lead needs to particularly be aware of. It must also be assigned it to @shawna_slh (and @SteveALee if there are updates that the technical lead needs to be involved in)
  * Add a link to the Pull Request in the Publication Schedule [@@ maybe a wiki page in a new GitHub repo that anyone can edit? or a page in https://www.w3.org/wiki/ except only Members can edit that...], and indicate if the technical lead needs to be involved in this publication or not

## Details

Publication branches are protected, and editable only by W3C staff. In most repos, the publication branch is main or master. All updates to appear in the WAI website are on this branch and will be merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Steve. As backup, any W3C staff (as W3C organization administrators) can edit or merge into the publication branch. To enable this, resource editors are restricted to write privileges maximum.

Resource editors provide updates in a single Pull Request to the publication branch. If there are multiple updates, they can be provided in a staging (Ready-to-Publish) branch, with a single Pull Request for that branch to be merged into the publication branch. Only highly-trusted individuals should have write access to the staging (Ready-to-Publish branch. Before updates are made in the staging (ready-to-Publish) branch, content updates have been approved by the Working Group, user interface updates approved by the website manager, and shared component updates approved by the technical lead.

WAI website updates are usually published/deployed on Tuesdays about 13:00UTC. Deploys on other days can be arranged ahead of time. Note that the site manager or maintainers will also likely deploy the site at other times, without prior notice.

After a pull request has been merged it is deleted in GitHub and the associated branch also deleted. This keeps the repository clean; too many branches make development hard. Note though, that GitHub allows deleted Pull Requests and branches to be restored if ever required.
