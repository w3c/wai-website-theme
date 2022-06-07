---
title: "Expand/Collapse: Multiple"
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

{::nomarkdown}
{% include box.html type="start" title="Overview" class="" %}
{:/}

Expand/collapses can also be nested and used multiple times on the page. `{% include excol.html type="all" %}` creates buttons to expand/collapse all of the sections.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="Code" class="example" %}
{:/}

```liquid
{%raw%}{% include excol.html type="all" %}

{% include excol.html type="start" id="one" %}

Expand/collapse button label

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus incidunt velit quia quisquam odio, minus, blanditiis molestias deserunt facere consequuntur placeat minima odit ex officia est nemo neque aut provident?

{% include excol.html type="start" id="two" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et pariatur quam qui deserunt fugiat maxime, eveniet similique aperiam, enim saepe modi in laboriosam reprehenderit optio, repellendus vel iure ut voluptatibus.

{% include excol.html type="end" %}

{% include excol.html type="end" %}

{% include excol.html type="start" id="three" %}

Expand/collapse button label

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat fugiat dicta accusantium odit sed, dolorum suscipit deserunt tempore commodi voluptate eos aut odio, quod magni quis corrupti aspernatur iusto consequatur.

{% include excol.html type="start" id="four" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet quibusdam asperiores excepturi consequatur debitis sapiente, in quisquam explicabo blanditiis rem voluptas tempora esse odit beatae dignissimos quas quo doloremque sint.

{% include excol.html type="end" %}

{% include excol.html type="end" %}
{%endraw%}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{::nomarkdown}
{% include box.html type="start" title="Rendered output" class="example" %}
{:/}

{% include excol.html type="all" %}

{% include excol.html type="start" id="one" %}

Expand/collapse button label

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus incidunt velit quia quisquam odio, minus, blanditiis molestias deserunt facere consequuntur placeat minima odit ex officia est nemo neque aut provident?

{% include excol.html type="start" id="two" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et pariatur quam qui deserunt fugiat maxime, eveniet similique aperiam, enim saepe modi in laboriosam reprehenderit optio, repellendus vel iure ut voluptatibus.

{% include excol.html type="end" %}

{% include excol.html type="end" %}

{% include excol.html type="start" id="three" %}

Expand/collapse button label

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat fugiat dicta accusantium odit sed, dolorum suscipit deserunt tempore commodi voluptate eos aut odio, quod magni quis corrupti aspernatur iusto consequatur.

{% include excol.html type="start" id="four" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet quibusdam asperiores excepturi consequatur debitis sapiente, in quisquam explicabo blanditiis rem voluptas tempora esse odit beatae dignissimos quas quo doloremque sint.

{% include excol.html type="end" %}

{% include excol.html type="end" %}

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::nomarkdown}
{% include box.html type="start" title="HTML output (DO NOT USE)" class="example simple" %}
{:/}

```html
{{% include excol.html type="all" %}

{% include excol.html type="start" id="one" %}

Expand/collapse button label 1

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus incidunt velit quia quisquam odio, minus, blanditiis molestias deserunt facere consequuntur placeat minima odit ex officia est nemo neque aut provident?

{% include excol.html type="start" id="two" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et pariatur quam qui deserunt fugiat maxime, eveniet similique aperiam, enim saepe modi in laboriosam reprehenderit optio, repellendus vel iure ut voluptatibus.

{% include excol.html type="end" %}

{% include excol.html type="end" %}

{% include excol.html type="start" id="three" %}

Expand/collapse button label

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat fugiat dicta accusantium odit sed, dolorum suscipit deserunt tempore commodi voluptate eos aut odio, quod magni quis corrupti aspernatur iusto consequatur.

{% include excol.html type="start" id="four" %}

Expand/collapse button label second level

{% include excol.html type="middle" %}

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet quibusdam asperiores excepturi consequatur debitis sapiente, in quisquam explicabo blanditiis rem voluptas tempora esse odit beatae dignissimos quas quo doloremque sint.

{% include excol.html type="end" %}

{% include excol.html type="end" %}
```

{::nomarkdown}
{% include box.html type="end" %}
{:/}
