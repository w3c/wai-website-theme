---
title: "Editor Notes"
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

{% include toc.html levels="2" %}

## Usage

This snippet uses issue number and repository and allows the editor to leave a note. Use the status parameter to highlight the issue by its status. These editor notes only show up in Netlify previews, not in the live site.

* Issue = issue number  
* Repo = repository  
* Note = editor’s note  
* Status = open/proposed/accepted/(empty for gray text notes)

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

{% raw %}{% include ednote.html issue="604" repo="w3c/wai-tutorials" note="Consider removing role=group advice" status="open" %}{% endraw %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include ednote.html issue="604" repo="w3c/wai-tutorials" note="Consider removing role=group advice" status="open" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}
