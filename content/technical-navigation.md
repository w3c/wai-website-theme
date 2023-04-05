---
title: "Navigation"
permalink: /technical/navigation/
ref: /technical/navigation/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: content/technical-navigation.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

The navigation file has the whole outline of the hierarchy of the website in it. It is centrally edited in the [wai-website-data Repository](https://github.com/w3c/wai-website-data).

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{% include toc.html %}

## One Entry

Each entry for a page looks like this:

```yaml
- name:
    en: "English Name"
    fr: "Title Français"
  url: "/reference/to/page/"
```

## Sub-Pages

With sub-pages going into the `pages` entry but indented by two spaces, for example:

```yaml
- name:
    en: "English Name"
    fr: "Title Français"
  url: "/reference/to/page/"
  pages:
  - name:
      en: "English Name Sub"
      fr: "Title Français Sub"
    url: "/reference/to/page/sub/"
```

## Hide From Main Navigation

For parts of the page that are not supposed to be in the main horizontal navigation (“About WAI”, “News”), use a `mainnav: false` in the root item:

```yaml
- name:
    en: News
  mainnav: false
```

## Show Only When Accessed

For entries that should only show up when you are on that page, add `hide: true`:

```yaml
- name:
    en: "Accessibility Principles"
    fr: "Principes d’accessibilité"
    es: "Principios de accesibilidad"
    zh-hans: "无障碍原则"
  url: "/fundamentals/accessibility-principles/"
  pages:
    - name:
        en: Changelog
        de: 'Änderungsprotokoll'
        nl: 'Changelog.'
        el: 'Change log'
        zh-hans: '修改日志'
        fr: 'Changements'
        es: 'Registro de cambios'
      url: "/fundamentals/accessibility-principles/changelog/"
      hide: true
```

Here, the changelog page is only shown in the navigation when navigating to the `/fundamentals/accessibility-principles/changelog/` page. It allows user to easily see to which page the changelog in this case belongs to, and it also helps with building the breadcrumb navigation.

## Hide Side Navigation Menu From a Page

The side / secondary menu appears on the left of pages that are in the navigation filer unless the `pag.no-sidenav` variable is defined. eg in a page's front matter:

```yaml
no-sidenav: true
---
```

