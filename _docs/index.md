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
  bundle install
  bundle exec jekyll serve -w --config _config_doc.yml
```

## Theme installation

### Instructions

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

{::nomarkdown}
  </div>
</div>
{:/}
