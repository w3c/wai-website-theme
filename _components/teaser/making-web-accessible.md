---
title: "Making the Web Accessible"
permalink: /components/teasers/mwa/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
layout: home
---

<h1 class="visuallyhidden">Web Accessibility Initiative Home</h1>
<section class="default-grid teaser making-web-accessible" aria-labelledby="mwa-title">
  <header class="inner teaser-h">
    <h2 id="mwa-title">
      <span class="title">Making the Web Accessible</span>
    </h2>
    <p class="subtitle">Strategies, guidelines, and resources to make the web accessible to people with disabilities.</p>
  </header>
  <div class="inner grid-3">
    <div class="col1 making-web-accessible-box">
      <h3>{%- include_cached icon.html name="hp-book" class="mwa-icon mwa-icon-book" -%} W3C</h3>
      <p>The World Wide Web Consortium (W3C) develops international standards for the Web: HTML, CSS, and many more.</p>
    </div>
    <div class="col2 making-web-accessible-box">
      <h3>{%- include_cached icon.html name="hp-tools" class="mwa-icon" -%} WAI</h3>
      <p>The W3C Web Accessibility Initiative (WAI) develops standards and support materials to help you understand and implement accessibility.</p>
    </div>
    <div class="col3 making-web-accessible-box">
      <h3>{%- include_cached icon.html name="hp-computer" class="mwa-icon mwa-icon-computer" -%} You</h3>
      <p>You can use W3C WAI resources to make your websites, applications, and other digital creations more accessible and usable to everyone.</p>
    </div>
  </div>
  <div class="inner hidesection">
    <button class="showhidebutton" data-target=".making-web-accessible .inner:not(.hidesection)" aria-expanded="true" data-showhidebuttonid="homepage-making-web-accessible" data-showtext="Show information about W3C, WAI, You" data-hidetext="Hide Section">Hide Section</button>
  </div>
</section>