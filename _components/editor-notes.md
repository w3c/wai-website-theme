---
title: "Editor Notes"
lang: en
inline_css: |
---

{% include toc.html levels="2" %}

## Usage

This snippet uses issue number and repository and allows the editor to leave a note. Use the status parameter to highlight the issue by its status. These editor notes only show up in Netlify previews, not in the live site.

* Issue = issue number (optional)
* Repo = repository (optional)
* Note = editor’s note
* Status = open/proposed/accepted/(empty for gray text notes)

## Open

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


## Proposed Change

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

{% raw %}{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="Rewriting this paragraph for clarity" status="proposed" %}{% endraw %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="Rewriting this paragraph for clarity" status="proposed" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Accepted Change (after Group review)

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

{% raw %}{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="Rewriting this paragraph for clarity" status="acceptet" %}{% endraw %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="Rewriting this paragraph for clarity" status="accepted" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## MISC Note

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

{% raw %}{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="This section needs a rewrite for WCAG 2.2" %}{% endraw %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include ednote.html issue="666" repo="w3c/wai-tutorials" note="This section needs a rewrite for WCAG 2.2" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}
