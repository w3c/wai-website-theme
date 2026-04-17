---
title: "Grammar – WAI Style Guide"
title_sentence: "Grammar"
title_html: "Grammar"
nav_title: "Grammar"
lang: en
order: 4
---

{% include toc.html %}


## Approaches for related information in sentences

When you have related information, you can @@[present|format] it with:
* separate sentences
* em dash
* semicolon
* parentheses

In most cases, use separate sentences. This is best for plain language.

You can use a transition such as "For example", "See", "Thus", "Therefore",  "Specifically", "Instead", or "However".

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">

Example 1:
<ul>
  <li>Avoid em dash: Forms are commonly used to provide user interaction — for example, forms are used for logging in, registering, commenting, and purchasing.</li>
  <li>Avoid semicolon: Forms are commonly used to provide user interaction; for example, forms are used for logging in, registering, commenting, and purchasing.</li>
  <li>Avoid parenthesis: Forms are commonly used to provide user interaction (for example, forms are used for logging in, registering, commenting, and purchasing).</li>
  <li>Use two sentences: Forms are commonly used to provide user interaction. For example, forms are used for logging in, registering, commenting, and purchasing.</li>
</ul>

Example 2:
<ul>
  <li>Avoid em dash: WCAG 3 will have a different structure, different conformance model, and broader scope — see <a href="https://www.w3.org/WAI/standards-guidelines/wcag/wcag3-intro/">WCAG 3 Introduction</a>.</li>
  <li>Use two sentences: WCAG 3 will have a different structure, different conformance model, and broader scope. See <a href="https://www.w3.org/WAI/standards-guidelines/wcag/wcag3-intro/">WCAG 3 Introduction</a>.</li>
</ul>
</div>

### One sentence options

Optionally, you can combine the information into one sentence using a semicolon, em dash, or parentheses, as described below. Avoid long or complex sentences.

#### Semicolon (optional)

If the information is short, simple independent clauses, you can use one sentence with a semicolon. Both clauses should be grammatically complete sentences.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>It's easy; see the <a href="/style-guide/structure-presentation/#structure">Structure section</a>.</li>
</ul>
</div>

#### Em dash (optional)

If you want to convey emphasis or a sharp break in thought, you can use an em dash with simple clauses. (Note that em dashes are associated with AI writing.)

The first part should be a complete sentence. The part after the dash does not need to be a complete sentence.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>The W3C mission is to make the web work — for everyone.</li>
</ul>
</div>

See also [Em dashes](/style-guide/grammar/#em-dashes).

#### Parentheses (optional)

When related information applies to a point within a simple sentence, you can put the information in parentheses within the sentence. Be aware that parentheses break up the sentence flow and make the sentence more complex.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Captions (called “subtitles” in some areas) provide content to people who are deaf and hard-of-hearing.</li>
</ul>
</div>

## Capitalization

### Abbreviations

See [Capitalization in abbreviations](/style-guide/style-different-content-types/#capitalization-in-abbreviations).

### All caps

Avoid using all capital letters for words (except acronyms).

### Braille

Use lowercase for “braille” (unless you are referring to Louis Braille).

### Glossaries

Use lowercase for glossary terms.

### Headings

See [Capitalization in headings](/style-guide/style-different-content-types/#capitalization-in-headings).

### Lists

See [Capitalization and punctuation in lists](/style-guide/style-different-content-types/#capitalization-and-punctuation-in-lists).

### Proper nouns

_@@Tamsin: The general guidance is not needed here. It's common English.
The capitalization for Success Criteria is needed! I think that belongs under WCAG terms.
I'll leave that for you to do. :)_

Capitalize proper nouns. User lower case for common nouns.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

* Proper noun capitalized: The goal of Success Criterion 2.5.8 Target Size (Minimum) is to make controls easier to activate.
* Common noun lowercase: WCAG 2.2 provides 9 additional success criteria since WCAG 2.1.

</div>

#### Proper nouns that have become common nouns

_@@ Tamsin. Pesonally, I would look for these words in a list of specific terms. For example, I'd look in the <a href="https://www.w3.org/guide/manual-of-style/#Terms">13. Commonly Misspelled Terms</a> I don't have strong feelings on what to do with them for now._

Use lowercase for the following nouns, unless these are part of a name or title:

* web (the web)
* internet (the internet)

## That versus which

<b>That:</b> Introduces essential information needed to understand the sentence

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

The time is essential to identify specific meetings: “The meeting that starts at 10:00 is online. The other meetings are in-person.”
</div>

<b>Which:</b> Introduces extra information that is not essential.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

The time is not essential: “The meeting, which starts at 10:00, is online.”
</div>

## Punctuation

#### Colon

Use a colon to introduce the main idea(s). It gives the sense of “as follows.”

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>Contact us: email@example.com</li>
  <li>They had one goal: to finish the marathon.</li>
</ul>
</div>

Compare with the use of an [em dash](#em-dash-), which clarifies or elaborates on the main idea that was just said.

#### Semicolon

See [Semicolon (optional) in Approaches for related information in sentences](/style-guide/grammar/#semicolon-optional).


### Commas

In a phrase listing three or more items, place a comma before the final conjunction ("Oxford comma").

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

I bought apples, oranges, and bananas.
</div>

### Dashes and hyphens

#### Em dash (—)

Put a space before and after em dashes.

##### Em dashes for list items

Use em dashes when list items have a short phrase followed by an explanation.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<p>Some example uses of this curricula include:</p>
<ul>
  <li><strong>faculty lecturer</strong> — selects topics from the foundation, developer, and designer modules to teach accessibility to computer science students</li>
  <li><strong>employee training coordinator</strong> — compares the course content offered by different providers based on the modules provided in this resource</li>
  <li><strong>procurer</strong> — includes requirements in a training Request for Proposals (RFP) based on the modules provided in this resource</li>
</ul>
</div>

##### Em dashes in sentences

See [Em dash (optional) in Approaches for related information in sentences](/style-guide/grammar/#em-dash-optional).

#### En dash (–)

* Use an en dash to indicate a range in numbers, such as in dates, pages, and sports results.
* Do not add a space before and after an en dash.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>The years 1990–2000 were transformative.</li>
  <li>Read pages 10–15.</li>
  <li>They defeated the defending champions 106–76.</li>
</ul>
</div>

#### Hyphen (-)

Use a hyphen to join compound adjectives.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>peer-to-peer connection</li>
  <li>short-term memory</li>
  <li>well-known technique</li>
</ul>
</div>

Do *not* hyphenate:

* an adverb that ends in “ly”
* an adverb that follows a noun

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>They are two <b>closely related</b> concepts.</li>
  <li>The technique is <b>well known</b>.</li>
</ul>
</div>

Use a hanging hyphen when two compound adjectives modify the same noun.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

The pre<b>-</b> and post<b>-</b>deployment stages are equally important.
</div>

For guidance on terms we no longer hyphenate and are written as one word, see the section on [Spelling](/style-guide/tone-language-words/#spelling).

### Ellipsis (...)

Use an ellipsis to show:

* missing words
* a pause
* something left unsaid

Add a space before and after an ellipsis.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

I was wondering … but it’s probably not important.
</div>

### Headings

See [punctuation in headings](/style-guide/style-different-content-types/#punctuation-in-headings).

### Links

See [punctuation in links](/style-guide/style-different-content-types/#punctuation-in-links).

### Lists

See [punctuation in lists](/style-guide/style-different-content-types/#capitalization-and-punctuation-in-lists).

### Numbers

See [punctuation in numbers](/style-guide/style-different-content-types/#punctuation-in-numbers).

### Parentheses

See [Parentheses (optional) in Approaches for related information in sentences](/style-guide/grammar/#parentheses-optional).

### Quotation marks

Use double quotation marks to reference a term.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

This accessibility requirement is sometimes called “sufficient color contrast”; however, the technical term is “luminosity contrast”.
</div>

### Slashes

#### Forward slash

Generally, only use a forward slash in dates, fractions, and URLs.

Do not use a forward slash to indicate an optional plural. Use parentheses instead.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Avoid: Test/s</li>
  <li>Use: Test(s)</li>
</ul>
</div>

Try not to use a forward slash to show two things that have a close relationship or that are in opposition. Use a hyphen or words like “and” or “or” instead.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">

Example 1:

<ul>
  <li>Avoid: The issue was part of the larger nature/nurture debate.</li>
  <li>Use: The issue was part of the larger nature<b>-</b>nurture debate.</li>
</ul>

Example 2:

<ul>
  <li>Avoid: The project examines cause/effect relationships.</li>
  <li>Use: The project examines cause-<b>and</b>-effect relationships.</li>
</ul>

Example 3:

<ul>
  <li>Avoid: If/when I have a dog, I’ll need a fenced yard.</li>
  <li>Use: If <b>or</b> when I have a dog, I’ll need a fenced yard.</li>
</ul>

Example 4:

<ul>
  <li>Avoid: Add a potato and/or an onion.</li>
  <li>Use: Add a potato, <b>or</b> an onion, <b>or both</b>.</li>
</ul>
</div>

**Exception:** You can use a forward slash if it shows a relationship or contrast better than when using words.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Avoid: In inclusive writing, avoid gender pronouns (she or her, he or his).</li>
  <li>Use: In inclusive writing, avoid gender pronouns (she/her, he/his) where possible.</li>
</ul>
</div>
