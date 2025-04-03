---
title: "Draft Banner"
lang: en
redirect_from:
  - /components/publication-warning/
inline_css: |
---

This is the publication warning that appears on the top of unpublished documents:

<section class="default-grid info" tabindex="0">
  <p class="inner">
    This is an unpublished draft preview that might include content that is not yet approved. The published website is at <a href="https://www.w3.org/WAI/">w3.org/WAI/</a>.
  </p>
</section>

In Netlify previews, the banner is displayed by default, unless the `_config_staging.yml` file contains `published: true`.
