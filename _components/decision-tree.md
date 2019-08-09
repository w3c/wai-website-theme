---
title: Decision Tree
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
footer: > # Text in footer in HTML
   This is the text in the footer
---

<ul class="decision-tree">
  <li><strong>Does the image contain text?</strong>
    <ul>
      <li class="yes"><strong>Yes:</strong>
        <ul>
          <li><strong>… and the text is also present as <em>real</em> text nearby.</strong>
<em>Use an empty <code>alt</code> attribute. See <a href="../decorative/">Decorative Images</a>.</em></li>
          <li><strong>… and the text is only shown for visual effects.</strong>
<em>Use an empty <code>alt</code> attribute. See <a href="../decorative/">Decorative Images</a>.</em></li>
          <li><strong>… and the text has a specific function, for example is an icon.</strong>
  <em>Use the <code>alt</code> attribute to communicate the function of the image. See <a href="../functional/">Functional Images</a>.</em></li>
          <li><strong>… and the text in the image is not present otherwise.</strong> <em>Use the <code>alt</code> attribute to include the text of the image. See <a href="../textual/#image-of-styled-text-with-decorative-effect">Images of Text</a>.</em></li>
        </ul>
      </li>
      <li class="no"><strong>No:</strong>
        <ul>
          <li>Continue.</li>
        </ul>
      </li>
    </ul>
  </li>
  <li><strong>Is the image used in a link or a button, and would it be hard or impossible to understand what the link or the button does, if the image wasn’t there?</strong>
    <ul>
      <li class="yes"><strong>Yes:</strong>
        <ul>
          <li><em>Use the <code>alt</code> attribute to communicate the destination of the link or action taken. See <a href="../functional/">Functional Images</a>.</em></li>
        </ul>
      </li>
      <li class="no"><strong>No:</strong>
        <ul>
          <li>Continue.</li>
        </ul>
      </li>
    </ul>
  </li>
  <li><strong>Does the image contribute meaning to the current page or context?</strong>
    <ul>
      <li class="yes"><strong>Yes:</strong>
        <ul>
          <li><strong>… and it’s a simple graphic or photograph.</strong>
<em>Use a brief description of the image in a way that conveys that meaning in the <code>alt</code> attribute. See <a href="../informative/">Informative Images</a>.</em></li>
          <li><strong>… and it’s a graph or complex piece of information.</strong>
<em>Include the information contained in the image elsewhere on the page. See <a href="../complex/">Complex Images</a>.</em></li>
          <li><strong>… and it shows content that is redundant to <em>real</em> text nearby.</strong>
<em>Use an empty <code>alt</code> attribute. See (redundant) <a href="../functional/#logo-image-within-link-text">Functional Images</a>.</em></li>
        </ul>
      </li>
      <li class="no"><strong>No:</strong>
        <ul>
          <li>Continue.</li>
        </ul>
      </li>
    </ul>
  </li>
  <li><strong>Is the image purely decorative or not intended for the user?</strong>
    <ul>
      <li class="yes"><strong>Yes:</strong>
        <ul>
          <li><em>Use an empty <code>alt</code> attribute. See <a href="../decorative/">Decorative Images</a>.</em></li>
        </ul>
      </li>
      <li class="no"><strong>No:</strong>
        <ul>
          <li>Continue.</li>
        </ul>
      </li>
    </ul>
  </li>
  <li><strong>Is the image’s use not listed above or it’s unclear what <code>alt</code> text to provide?</strong>
    <ul>
      <li class="yes">This decision tree <strong>does not</strong> cover all cases. For detailed information on the provision of text alternatives refer to the <a href="../">Image Concepts Page</a>.</li>
    </ul>
  </li>
</ul>