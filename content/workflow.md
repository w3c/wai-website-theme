---
title: "Updating WAI Website Resources"
permalink: /workflow/
lang: en
github:
  repository: w3c/wai-website-theme/
  path: content/workflow.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This section describes how content authors work with the website team to publish updates. The documentation section [Create and Edit Documents](/writing/) describes working with content.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## Overview

The workflow described here enables parts of the WAI website to be developed independently through the lightweight [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow), and enables publication on the WAI website updates to be coordinated by the website manager.

* One branch in the repository is designated as the "**publication**" branch. Publication branches are [protected](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) so that all changes to the WAI website are merged only by the site manager, technical lead, or maintainers &mdash; currently Shawn and Rémi.
* Editors provide a single pull request to the publication branch when updates are ready for publication.
* Scheduled updates are usually published/deployed on Tuesdays.

## Workflow

* Each Working Group and editorial team defines their own workflow for drafting, reviewing, approving, and submitting updates.
  * Pull request used during development are made to the default branch or other branches, NOT the publication branch.
  * Netlify previews are available for all pull requests.
  * Editors and/or project managers ensure [early coordination on user interface, shared component, and content updates](#coop), per below.
* When the editor wants updates published:
  * If other than a simple content update, coordinate with Rémi and Shawn **at least the week before**.<br>If a simple content update, then **by Monday midnight US Eastern time** is OK.
  * Create a single pull request to the "publication" branch. How to and details in [Creating a pull request to the publication branch](#pr) below.
    * Include a brief summary of the changes. **Explain everything that the website manager and/or technical lead needs to particularly be aware of.**
    * Include a link to the Task Force and/or Working Group approval to publish.
    * Include details on any shared components or other things that need updating outside this resource repo. For example, Liquid variables provided in the resource's `_config.yml` file that need to be copied across to the wai-website repo.
    * <s>Add a link to the pull request in the [Publication Schedule](https://www.w3.org/wiki/WAI_Website_Publication_Schedule)</s>
    * <em>New:</em> Assign to: remibetin.
    * <em>New:</em> shawna_slh will be automatically added as reviewer. Please make sure Shawn acknowledges the request, by whatever means: email, IRC, Slack, during a team meeting, etc.
* WAI website updates are usually published/deployed on Tuesdays about 14:00 UTC. Deploys on other days can be arranged ahead of time. Note that the site manager or maintainers will also likely deploy the site at other times, without prior notice.
* When the updates are published, the publisher does an initial check that things worked, and adds a comment in the pull request so the editors can do additional checks.


## Coordinating User Interface, Shared Component, and Content Updates {#coop}

**Editors are responsible for ensuring that everything submitted for publication is indeed ready to publish** &mdash; that it is approved, tested, and carefully quality checked. Website publishers are not able to do thorough reviews before publication.

* All user interface ideas must be coordinated with the WAI website manager (currently Shawn) &mdash; ideally from the start of the idea, before people get attached to a particular option.

* All updates to shared components or other beyond the individual repo &mdash; to the website theme, config files, navigation.yml, etc. &mdash; must be coordinated with the WAI website technical lead (currently Rémi) before a pull request is submitted to the publication branch.

* All content updates must be approved by the Working Group that owns the repo content. In some cases, the Working Group has provided blanket approval for some types of updates, such as for some aspects of ACT Rules.

## Details

Publication branches are protected, and editable only by W3C staff. All updates to appear in the WAI website are on this branch and will be merged by the site manager, technical lead, or maintainers &mdash; currently Shawn and Rémi. As backup, any W3C staff (as W3C organization administrators) can edit or merge into the publication branch. Resource editors and other non-W3C-team have maximum repository access privileges "write".

Pull requests targeting the publication branch must be approved by Shawn before merging. A ruleset enforces this requirement.

Resource editors provide updates in a single pull request to the publication branch. If there are multiple updates, they can be provided in the default branch (usually main or master), with a single pull request for that branch to be merged into the publication branch.

Only highly-trusted individuals should have write access to the default branch. Before updates are made in the default branch, content updates have been approved by the Working Group, user interface updates approved by the website manager, and shared component updates approved by the technical lead.

Editors work with the WAI site manager and technical lead to coordinate on considerations for:

* fit with existing content
* editorial style
* user experience
* accessibility
* internationalization
* theme and coding
* information architecture
* technical integration

## Site-Wide Components {#components}

WAI website components:

* [https://github.com/w3c/wai-website-theme/](https://github.com/w3c/wai-website-theme/) - Jekyll theme - includes components and layouts as well as docs
* [https://wai-website-theme.netlify.app/components/](https://wai-website-theme.netlify.app/components/) - descriptions of design components
* [https://github.com/w3c/wai-website-theme/blob/main/_layouts/standalone_resource.html](https://github.com/w3c/wai-website-theme/blob/main/_layouts/standalone_resource.html) - layout for new minimal resources - used for report tools, supplemental guidance, ACT Rules, ARIA APG
  * as described in [https://github.com/w3c/wai-minimal-header-design/](https://github.com/w3c/wai-minimal-header-design/)

Currently, issues related to these components are in different places. We are in the process of moving all issues to: [https://github.com/w3c/wai-website/issues/](https://github.com/w3c/wai-website/issues/) so they are in one place. We will use labels to group them.

Please put any new issues in [https://github.com/w3c/wai-website/issues/](https://github.com/w3c/wai-website/issues/) &mdash; and feel free to move existing issues there, too.

## Creating a pull request to the publication branch {#pr}

From the Pull Request section, click the "New" button:<br>
{% include image.html src="new-pr-1.png" alt="" %}

Change the base branch to "publication". Click the "Create pull request" button.<br>
{% include image.html src="new-pr-2.png" alt="" %}

For the title, put something like "For publication/deploy on Tuesday 9 September 2023". (Please do not use a number for the month.)

In the comments,
* Include a brief summary of the changes. Often a list of the PRs to the main branch since the last publication provides a good summary, and also helps us followup if we need more info.
* Explain everything that the website manager and/or technical lead needs to particularly be aware of.

The purpose of this information is:
* to confirm that anything that needs review from Shawn or other got that review
* for the publisher to use for spot checking that the deploy worked
* for troubleshooting if anything goes wrong
