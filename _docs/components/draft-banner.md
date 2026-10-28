---
title: "Draft Banner"
lang: en
redirect_from:
  - /components/publication-warning/
---

This is the publication warning that appears on the top of unpublished documents:

In Netlify previews, the banner is displayed by default, unless the `_config_staging.yml` file contains `published: true`.

{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" h="2" %}
{:/}

{% include_cached draft-banner.html lang=pagelang message=page.draft-banner-message %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

