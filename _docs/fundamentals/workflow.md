---
title: "Updating WAI Website Resources"
permalink: /workflow/
last_updated: 2025-07-22
lang: en
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

* One branch in the repository is designated as the "**publication**" branch.
* During development, editors use the default branch (usually `draft` or `main`) or other branches, not the publication branch.
* Content updates must be approved by the Working Group.
* User interface ideas and shared components updates must be coordinated early with the WAI team.
* Editors provide a single pull request to the publication branch when updates are ready for publication.
* Updates are published without prior notice. Scheduled updates can be arranged ahead of time.

## Workflow

* Each Working Group and editorial team defines their own workflow for drafting, reviewing, approving, and submitting updates.
* During development, Editors edit the default branch (usually `main`) or other branches, NOT the publication branch. Netlify previews are available for all pull requests.
* Before submitting a pull request to the publication branch, Editors must ensure that everything is indeed ready to publish:
  * Updates to user interface and shared components [have been coordinated early with the WAI team](#coop)
  * Content updates have been approved by the relevant Working Group [^1]
  * Content has been tested and carefully quality checked. Website publishers are not able to do thorough reviews before publication
* When updates are ready to publish:
  * If other than a simple content update, Editors coordinate with Rémi and Shawn **at least the week before** the expected publication.
  * Editors create a single pull request to the `publication` branch. See [Creating a pull request to the publication branch](#pr):
    * Include a brief summary of the changes. Explain everything that the website manager and/or technical lead need to particularly be aware of
    * Include a link to the Working Group/Task force approval to publish
    * Include details on any shared components or other things that need updating outside this resource repository. For example, updates to the `_config.yml` file that need to be copied across to the `wai-website` repository.
    * Assign the pull request to: remibetin.
* The WAI website technical lead (currently Rémi) regularly publishes updates, without prior notice. Publications at specific dates can be arranged ahead of time.
* After publication, Rémi does an initial check that things worked, and adds a comment in the pull request so the editors can do additional checks.

[^1]: In some cases, the Working Group has provided blanket approval for some types of updates, such as for some aspects of ACT Rules.

## Coordinating User Interface and Shared Component Updates {#coop}

Editors coordinate with the WAI website manager and technical lead on considerations for:
* fit with existing content
* editorial style
* user experience
* accessibility
* internationalization
* theme and coding
* information architecture
* technical integration

In particular:
* **User interface ideas must be coordinated with the WAI website manager (currently Shawn) before a pull request is merged to the default branch**. Ideally, this happens from the start of the idea, before people get attached to a particular option. The related pull requests must be reviewed by the WAI website technical lead (currently Rémi) before they are merged to the default branch.

* **Shared component updates must be coordinated with the WAI website technical lead (currently Rémi) before a pull request is submitted to the publication branch** . This includes theme, configuration files, navigation.yml and other updates beyond the individual repo.

## Details

Publication branches are protected, and editable only by W3C staff.

Pull requests targeting the publication branch must be approved by the WAI website technical lead (currently Rémi) before merging, who will coordinate with Shawn and other Team members as appropriate. A ruleset enforces this requirement.

Pull request are merged to the publication branch by Rémi or Shawn. As backup, any W3C staff (as W3C organization administrators) can merge into the publication branch.

Resource editors and other non-W3C-team have maximum repository access privileges "write". Only highly-trusted individuals should have write access to the default branch.

## Site-Wide Components {#components}

WAI website components:

* [WAI Website Theme](https://github.com/w3c/wai-website-theme/) – includes components and layouts as well as docs
* [Design Components](https://wai-website-theme.netlify.app/components/) - descriptions of design components
* [Standalone resource layout](https://github.com/w3c/wai-website-theme/blob/main/_layouts/standalone_resource.html) - layout for new minimal resources - used for report tools, supplemental guidance, ACT Rules, ARIA APG
  * as described in [wai-minimal-header-design repository](https://github.com/w3c/wai-minimal-header-design/)

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
