# W3C WAI Website Theme

[![Netlify Status](https://api.netlify.com/api/v1/badges/bccece24-1280-4687-8121-4536666ea4c9/deploy-status)](https://app.netlify.com/sites/wai-website-theme/deploys)

This repository is where the Jekyll theme for [w3.org/WAI](https://www.w3.org/WAI/) lives.

The theme can be used by all Jekyll sites that make up the W3C WAI website.

The theme CSS can also be used by W3C tools built outside Jekyll, like the [ATAG Report Tool](https://www.w3.org/WAI/atag/report-tool/).

## Usage

See the [documentation](https://wai-website-theme.netlify.app/) for usage information.

## How to update wcag22.json

To update `wcag22.json`, run the following within the project directory:

```
node _update-wcag-json.mjs
```

This requires [Node.js](https://nodejs.org/) version 20 or later.

<details><summary>Archived content</summary>

## FAQ

### The default branch name has changed. How to update my fork?

Since 5 September 2024, the default branch is named `main`, for consistency with other W3C repositories and [GitHub default branch name](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches#about-the-default-branch).

If you have an existing fork, you can [rename your fork's default branch](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch#renaming-a-branch).

If you have a local clone, you can either delete and re-clone the repository, or update it by [running the commands from GitHub documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch#updating-a-local-clone-after-a-branch-name-changes).

</details>

