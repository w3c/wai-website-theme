---
title: "Footers (Page and Site)"
lang: en
custom_changelog: /writing/changelogs/example/
last_updated: 2024-11-04
---

***Note:** This is only a visual design reference. [The content is defined in the frontmatter](/writing/frontmatter/#footer-).*

## Page Footer

### Example 1: Last updated date

<footer class="page-footer default-grid">
  <div class="inner">
    <p><strong>Updated:</strong> {{ 'now' | date: "%d %B %Y" }}. <a href="{{ '/writing/changelogs/example/' | relative_url }}">Latest changes</a>.<br />First published March 2022.</p>
    <p>Editors: Jane Doe. Previously John Doe. Contributors: Jan Doe.</p>
    <p>First developed with support from ONE Project, then updated with support of the TWO Project and later the THREE Project.</p>
  </div>
</footer>

### Example 2: More recent last reviewed date

<footer class="page-footer default-grid">
  <div class="inner">
    <p><strong>This page has been reviewed and is current as of</strong> {{ 'now' | date: "%d %B %Y" }}. <a href="{{ '/writing/changelogs/example/' | relative_url }}">Latest changes</a>.<br />First published March 2022.</p>
    <p>Editors: Jane Doe. Previously John Doe. Contributors: Jan Doe.</p>
    <p>First developed with support from ONE Project, then updated with support of the TWO Project and later the THREE Project.</p>
  </div>
</footer>

### Example 3: Translation

***Note**: Following text is in English for reference. On live website, the page footer is displayed in the translated language.*

<footer class="page-footer default-grid">
  <div class="inner">
    <p><strong>English version updated:</strong> {{ 'now' | date: "%Y-%m-%d" }}. <a href="{{ '/writing/changelogs/example/' | relative_url }}">Latest changes</a>. (Translated {{ 'now' | date: "%Y-%m-%d" }}).<br />First published March 2022.</p>
    <p>Editors: Jane Doe. Previously John Doe. Contributors: Jan Doe.</p>
    <p>First developed with support from ONE Project, then updated with support of the TWO Project and later the THREE Project.</p>
  </div>
</footer>


## Site Footer

<footer class="site-footer grid-4q" aria-label="Site">
  <div class="q1-start q3-end about">
    <div>
      <p><a class="largelink" href="https://www.w3.org/WAI/" lang="en" dir="auto" translate="no">W3C Web Accessibility Initiative (WAI)</a></p>
      <p>Strategies, standards, and supporting resources to make the Web accessible to people with disabilities.</p>
    </div>
    <div class="social" lang="en" dir="auto" translate="no">
      <ul>
        <li><a href="https://w3c.social/@wai">{%include_cached icon.html name="mastodon" %} Mastodon</a></li>
        <li><a href="https://www.linkedin.com/company/w3c-wai/">{%include_cached icon.html name="linkedin" %} LinkedIn</a></li>
        <li><a href="https://www.w3.org/WAI/feed.xml">{% include_cached icon.html name="rss" %} Feed</a></li>
        <li><a href="https://www.youtube.com/channel/UCU6ljj3m1fglIPjSjs2DpRA/playlists/">{% include_cached icon.html name="youtube" %} YouTube</a></li>
        <li><a href="https://www.w3.org/WAI/news/subscribe/" class="button">Get News in Email</a></li>
      </ul>
    </div>
    <div lang="en" dir="auto" translate="no">
      <p>Copyright © {{ 'now' | date: "%Y" }} World Wide Web Consortium (<a href="https://www.w3.org/">W3C</a><sup>®</sup>). See <a href="{{ "/about/using-wai-material/" | relative_url }}">Permission to Use WAI Material</a>.</p>
    </div>
  </div>
  <div class="q4-start q4-end">
    <ul style="margin-bottom:0">
      <li><a href="/WAI/about/contacting/">Contact WAI</a></li>
      <li><a href="/WAI/sitemap/">Site Map</a></li>
      <li><a href="/WAI/news/">News</a></li>
      <li><a href="/WAI/sitemap/#archive">Archive</a></li>
      <li><a href="/WAI/about/accessibility-statement/">Accessibility Statement</a></li>
      <li><a href="/WAI/translations/"> Translations</a></li>
      <li><a href="/WAI/roles/">Resources for Roles</a></li>
    </ul>
  </div>
</footer>