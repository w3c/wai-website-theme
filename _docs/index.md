---
title: "WAI website theme"
permalink: /
ref: /
lang: en
layout: home
class: teaser
---

{::nomarkdown}
<div class="default-grid teaser">
  <div class="inner">
    <header>
      <h1>{{ page.title }}</h1>
    </header>
{:/}

{% include toc.html %}

## Pre-requisites

Before you begin, make sure you have the following installed:
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (>= 3.3)
- [Bundler](https://bundler.io/)

## Local build

After cloning the repository, run:

```bash
  bundle install
  bundle exec jekyll serve -w --config _config_doc.yml
```

## Theme installation

1. Add the following to your Gemfile:

    ```ruby
    group :jekyll_plugins do
        gem 'wai-website-theme', git: 'https://github.com/w3c/wai-website-theme', branch: 'main'
    end
    ```

    Note: You can optionally specify a branch, tag, or commit to use. For more information, see [Bundler documentation](https://bundler.io/man/gemfile.5.html#GIT).

2. Run `bundle install`

3. Add the following to your `config.yml` file

    ```yaml
      theme: wai-website-theme
    ```

4. Run Jekyll. In your project root directory, run:

      ```bash
      bundle install
      bundle exec jekyll serve
      ```

## Theme update

To update the theme in existing projects, run the following within the project directory:

```
bundle update wai-website-theme --conservative
```

When there are updates, this will update the `revision` value in the `Gemfile.lock` to use the latest commit.

**Note:** Make sure to include the `--conservative` flag to avoid unintended updates of the theme dependencies.

## How to update wcag22.json

To update `_data/wcag22.json`, run the following within the project directory:

```
node _update-wcag-json.mjs
```

This requires [Node.js](https://nodejs.org/) version 20 or later.

{::nomarkdown}
  </div>
</div>
{:/}
