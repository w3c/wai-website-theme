---
title: "Footers (Page and Site)"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
inline_css: |
---

## Page Footer

<footer class="page-footer default-grid">
  <div class="inner">
    <p>Status: XXX updated Month 20XX</p>
    <p>Editors: Xxxxxx Yxxxxx; previously Xxxxxx Yxxxxx and Xxxxxx Yxxxxx. Developed by the Education and Outreach Working Group. Contributors: Xxxxxx Yxxxxx, Xxxxxx Yxxxxx , and Xxxxxx Yxxxxx. First developed with support from ONE Project, then updated with support of the TWO Project and later the THREE Project.</p>
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
        <li><a href="https://twitter.com/w3c_wai">{% include_cached icon.html name="twitter" %} Twitter</a></li>
        <li><a href="https://www.w3.org/WAI/feed.xml">{% include_cached icon.html name="rss" %} Feed</a></li>
        <li><a href="https://www.youtube.com/channel/UCU6ljj3m1fglIPjSjs2DpRA/playlistsv">{% include_cached icon.html name="youtube" %} YouTube</a></li>
        <li><a href="https://www.w3.org/WAI/news/subscribe/" class="button">Get News in Email</a></li>
      </ul>
    </div>
    <div lang="en" dir="auto" translate="no">
      <p>Copyright © 2019 W3C <sup>®</sup> (<a href="https://www.csail.mit.edu/"><abbr title="Massachusetts Institute of Technology">MIT</abbr></a>, <a href="https://www.ercim.eu/"><abbr title="European Research Consortium for Informatics and Mathematics">ERCIM</abbr></a>, <a href="https://www.keio.ac.jp/">Keio</a>, <a href="https://ev.buaa.edu.cn">Beihang</a>) <a href="/WAI/about/using-wai-material/">Permission to Use WAI Material</a>.</p>
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