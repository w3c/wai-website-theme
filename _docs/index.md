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

## Pre-requisites

Before you begin, make sure you have the following installed:
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (>= 3.3)
- [Bundler](https://bundler.io/)

## Local build

After cloning the repository, run:

```bash
  git submodule update --init --remote
  bundle install
  bundle exec jekyll serve -w --config _config_doc.yml
```

## Theme installation


### Instructions

1. Add the following to your Gemfile:

    ```ruby
    # Plugin for building Jekyll with a GitHub-hosted theme
    gem 'jekyll-remote-theme', '~>0.4.3'

    # The WAI website theme
    gem 'wai-website-theme', '~>1.10'
    ```

2. Add the following to your `config.yml` file:

    ```yaml
      remote_theme: w3c/wai-website-theme
    ```

    Note: You can optionally specify a branch, tag, or commit to use by appending an `@` and the Git ref. For example: `w3c/wai-website-theme@1.9.10` or `w3c/wai-website-theme@test-branch`.

3. List the theme plugins in your `config.yml` file:

    ```yaml
    plugins:
      - jekyll-include-cache
      - jekyll-paginate
      - jekyll-redirect-from
      - jekyll-remote-theme
      - jekyll-seo-tag
      - jekyll-sitemap
      - wai-website-plugin
    ```

4. Run Jekyll

    In your project root directory, run:

      ```bash
      bundle install
      bundle exec jekyll serve
      ```

{::nomarkdown}
  </div>
</div>
{:/}
