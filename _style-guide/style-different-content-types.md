---
title: "Style for Different Content Types (A–Z) – WAI Style Guide"
title_sentence: "Style for different content types (A-Z)"
title_html: "Style for Different Content Types (A–Z)"
nav_title: "Style for Different Content Types (A–Z)"
lang: en
order: 3
---

{% include toc.html %}

## Abbreviations

### Expanding abbreviations

Expand an abbreviation the first time you use it on the page. Put the short form in brackets afterwards. For further instances, just use the abbreviation.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>First use: World Wide Web Consortium (W3C)</li>
  <li>Second use: W3C</li>
</ul>
</div>

There are a few ways you can do this — see [techniques for expanding abbreviations](https://www.w3.org/WAI/WCAG22/Techniques/general/G102#related).

**Exception:** If the term is commonly known by its abbreviation, you do not need to provide the full meaning.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

ARIA, CAPTCHA, GIF, HTML, PDF, WiFi
</div>

#### `<abbr>` element

If you choose not to spell out an _unfamiliar_ abbreviation, use an `<abbr>` element that contains the full expansion the first time the abbreviation appears.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li><code><abbr title="Completely Automated Public Turing test to tell Computers and Humans Apart">CAPTCHA</abbr></code></li>
  <li><code><abbr title="Transmission Control Protocol">TCP</abbr></code></li>
</ul>
</div>

### Re-expanding abbreviations

* <b>Independent sections:</b> In sections that are intended to be read independently of the main text, consider spelling out the abbreviation again, followed by the abbreviation in parentheses.
* <b>Change of context:</b> If an abbreviation could have multiple meanings and the context changes, provide the full meaning to clarify which meaning is intended.

### Capitalization in abbreviations

Use <b>title case</b> if the full term is a proper noun.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>Web Content Accessibility Guidelines (WCAG)</li>
  <li>Framework for Accessible Specification of Technologies (FAST) Task Force</li>
</ul>
</div>

Use <b>lowercase</b> when the full term is a common noun.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>real-time communication (RTC)</li>
  <li>augmentative and alternative communication (AAC)</li>
</ul>
</div>

### Abbreviations to avoid

* <b>e.g.:</b> Instead, use the expanded term, “for example”.
* <b>etc.:</b> Instead, start the phrase with “such as” to indicate other possible options.
* <b>i.e.:</b> Instead, use “that is” or “in other words”.
* <b>vs.:</b> Instead, use “versus”, “compared with”, or “in contrast to”.

## Dates

Put the day first:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

1 January (instead of January 1)
</div>

Do not use letter suffixes after the day:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

30 April (instead of 30th April)
</div>

Use numbers for the day and year, words for the month:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

31 May 2022
</div>

In cases where numbers only must be used, use the following format: YYYY-MM-DD:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

2025-10-21
</div>

## Headings

Nest headings properly — for example, `<h1>` should not be followed by `<h3>` or lower.

See also the guidance on [Headings — Structure](/style-guide/structure-presentation/#structure).

### Capitalization in headings

Use sentence case, not title case.

**Exception:** Capitalize any terms in the heading that are [proper nouns](/style-guide/grammar/#proper-nouns).

### Punctuation in headings

Use no terminal punctuation for headings, unless a question mark is required.

## Links

### Link text

Link text should describe where the link will take the user.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Avoid: “Click here”, “Learn more”, “Read more”</li>
  <li>Use: “WAI Resources”</li>
</ul>
</div>

On a given page, never use the same link text for links that lead to different destinations.

### In-line links

Whenever feasible, place links to documents at the end of sentences.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Avoid: See <a href="https://www.w3.org/WAI/test-evaluate/easy-checks/">Easy Checks — A First Review of Web Accessibility</a> for the latest draft.</li>
  <li>Use: For the latest draft, see <a href="https://www.w3.org/WAI/test-evaluate/easy-checks/">Easy Checks — A First Review of Web Accessibility</a>.</li>
</ul>
</div>

### Links to non-HTML documents

Provide the <b>file format</b> so the user knows what to expect.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>Avoid: To download the full report, see Annual Report 2025.</li>
  <li>Use: To download the full report, see Annual Report 2025 (PDF).</li>
</ul>
</div>

### Punctuation in links

If the linked text is at the end of a complete sentence, add a full stop after the link.

If the linked text is a raw URL, do not add a full stop.

## Lists

### Parallel structure

Use the same grammatical structure for each list item to make it easy to read and scan. In other words, the list items should be written in the same form — for example, all nouns, all verb phrases, or all full sentences.

When items in a list consist of very long sentences, or of several sentences, consider reformatting the items as regular paragraphs of text.

### Capitalization and punctuation in lists

#### Text that introduces a list

When a sentence or phrase introduces a list in the body text, place a **colon** at the end of this text.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

Web accessibility means that people can:

<ul>
  <li>perceive, understand, navigate, and interact with the web</li>
  <li>contribute to the web</li>
</ul>
</div>

#### List items are complete sentences

Start each item with a <b>capital letter</b>.

End each item in a **full stop** or a **question mark**.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

<ul>
  <li>In spring I mulch the roses.</li>
  <li>In summer I grow vegetables.</li>
  <li>In autumn I sow and repair the lawn.</li>
</ul>
</div>

#### List items are fragments or not complete sentences

Begin each item with a <b>lowercase letter</b> (except for [proper nouns](/style-guide/grammar/#proper-nouns)).

End each item with **no punctuation**.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

Shopping list:

<ul>
  <li>bread</li>
  <li>milk</li>
  <li>eggs</li>
</ul>
</div>

#### List items complete the introductory phrase or sentence in the body text

Treat all the items in the list as a grammatical part of the introductory phrase or sentence.

Begin each item with a <b>lowercase letter</b>, even if the list is a numbered list.

End each item with **no punctuation**.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

To give your day structure, use the 1-3-5 Rule and focus on:

<ul>
  <li>one big task</li>
  <li>three medium tasks</li>
  <li>five small tasks</li>
</ul>

To prepare for a productive day:
<ol>
  <li>wake up early</li>
  <li>review goals</li>
  <li>prioritize the most important tasks</li>
</ol>
</div>

### Specifying list requirements (all items versus only one item)

#### If every item in the list is required

Use  “all of the following”:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

To complete your application, you must provide all of the following:

<ul>
  <li>proof of identity</li>
  <li>proof of address</li>
  <li>completed application form</li>
</ul>
</div>

#### If only one item in the list is allowed

Use  “one of the following”:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

To verify your identity, provide one of the following:

<ul>
  <li>passport</li>
  <li>driver's license</li>
  <li>birth certificate</li>
</ul>
</div>

## Numbers

### When to write as a digit

#### Ages, measurements, percentages, and ratios

Always use a <b>digit</b>:

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>She is 5 years old.</li>
  <li>They run 5 kilometres every day.</li>
  <li>He is 6 feet tall.</li>
  <li>We drink 2 litres of water a day.</li>
  <li>I bought 2 kilos of tomatoes.</li>
</ul>
</div>

For these units, use the abbreviation *after* the digit:

* File sizes: 5GB, 1.2MB (capital letters)
* Percentages: 9% (symbol)
* Temperature: 25°C, 77°F

### Digits versus words

#### Numbers showing quantity or order

Up to nine: use words.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>He invited nine friends.</li>
  <li>She came first.</li>
  <li>It was the ninth time this happened.</li>
</ul>
</div>

From 10 and above: use digits.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>They bought 10 plants.</li>
  <li>I was 12th in the queue.</li>
</ul>
</div>

**Exceptions:**

* See [Ages, measurements, percentages, and ratios](#ages-measurements-percentages-and-ratios).
* Use words for very large numbers when they are rounded figures.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples of writing very large numbers:

1 million, 2.2 billion, 3.5 trillion
</div>

#### Start of a sentence

If a number starts a sentence, use words or reword so as not to start with a digit.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>Avoid: 10 of the 25 participants had issues completing the task.</li>
  <li>Use:</li>
  <ul>
    <li>Ten of the 25 participants had issues completing the task.</li>
    <li>Of the 25 participants, 10 had issues completing the task.</li>
  </ul>
</ul>
</div>

#### Related numbers

With *related* numbers, where one number is usually written in digits and the other not, use <b>digits</b> for both.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

We bought 1 bag containing 500 seeds.
</div>

#### Adjacent numbers

With *adjacent* numbers that express different categories of numbers, use a <b>mixture of words and digits</b>.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Example:

The cook needs twelve 2-pound bags of flour.
</div>

### Punctuation in numbers

Use commas in numbers with more than three digits.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>9,000</li>
  <li>9,990,900</li>
</ul>
</div>

**Exceptions:** Use no punctuation for years, addresses, page numbers, or code line numbers.

## Symbols

Except where there is a lack of space (for example, in a table or chart), use words for the following symbols:

* <b>Ampersand:</b>
  * <b>&</b>: Use “and” instead.
* <b>Number sign (octothorpe):</b>
  * <b>#</b>: Use “number” or a suitable noun instead.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>Number 3 is correct.</li>
  <li>Statement 2 is true.</li>
</ul>
</div>

## Times

* Use the 24-hour clock.
* In a sentence, do not use the [en dash](/style-guide/grammar/#en-dash). Use “from … to” or “between … and” instead.

<div class="inset-text inset-text--related inset-text--condensed" markdown="1">
Examples:

<ul>
  <li>The meeting is from 09:00 to 10:30.</li>
  <li>They agreed to meet between 13:00 and 15:00.</li>
</ul>
</div>
