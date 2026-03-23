---
title: "Style for Different Content Types (A–Z)"
lang: en
---

{% include toc.html %}

## Abbreviations

### Expanding abbreviations

The first time you use an abbreviation (that is, acronyms, initialisms, and numeronyms), give the expanded form; then use the abbreviation for subsequent references.

<aside class="example">
<i>Example:</i><br>

<ul>
  <li>First use: World Wide Web Consortium (W3C)</li>
  <li>Second use: W3C</li>
</ul>
</aside>

**Exception:** If the term is more commonly known by its abbreviation, you do not need to expand it.

<aside class="example">
<i>Examples:</i><br>

ARIA, CAPTCHA, GIF, HTML, PDF, WiFi
</aside>

#### `<abbr>` element

If you have a reason for not expanding an abbreviation, mark up the first instance of the abbreviation with an `<abbr>` element that contains the expansion.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li><code><abbr title="Completely Automated Public Turing test to tell Computers and Humans Apart">CAPTCHA</abbr></code></li>
  <li><code><abbr title="Transmission Control Protocol">TCP</abbr></code></li>
</ul>
</aside>

### Capitalization in abbreviations

Use <b>title case</b> if the full term is a proper noun.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>Web Content Accessibility Guidelines (WCAG)</li>
  <li>Framework for Accessible Specification of Technologies (FAST) Task Force</li>
</ul>
</aside>

Use <b>lowercase</b> when the full term is a common noun.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>real-time communication (RTC)</li>
  <li>augmentative and alternative communication (AAC)</li>
</ul>
</aside>

### Abbreviations to avoid

* <b>e.g.:</b> Instead, use the expanded term, “for example”.  
* <b>etc.:</b> Instead, start the phrase with “such as” to indicate other possible options.  
* <b>i.e.:</b> Instead, use “that is” or “in other words”.  
* <b>v.s.:</b> Instead, use “versus”, “compared with”, or “in contrast to”.

## Dates

Put the day first:

<aside class="example">
<i>Example:</i><br>

1 January (instead of January 1)
</aside>

Do not use letter suffixes after the day:

<aside class="example">
<i>Example:</i><br>

30 April (instead of 30th April)
</aside>

Use numbers for the day and year, words for the month:

<aside class="example">
<i>Example:</i><br>

31 May 2022
</aside>

In cases where numbers only must be used (such as in a form), use the following format: YYYY-MM-DD:

<aside class="example">
<i>Example:</i><br>

2025-10-21
</aside>

## Headings

Nest headings properly, for example, `<h1>` should be followed by `<h1>` or `<h2>`, not by `<h3>` or lower.  

Use no terminal punctuation for headings, unless a question mark is required.  

See also the guidance on [Headings — Structure](/style-guide/structure-presentation/#structure).

### Capitalization in headings

Use sentence case, not title case.

**Exception:** Capitalize any terms in the heading that are [proper nouns](/style-guide/grammar/#proper-nouns).

## Links

### Link text

Link text should describe where the link will take the user. 

<aside class="example">
<i>Example:</i><br>

<ul>
  <li>Avoid: “Click here”, “Learn more”, “Read more”</li>
  <li>Use: “Rubbish recycling tips”</li>
</ul>
</aside>

Never use the same link text for links that lead to different destinations.

### In-line links

Whenever feasible, place links to documents at the end of sentences.

<aside class="example">
<i>Example:</i><br>

<ul>
  <li>Avoid: See <a href="https://www.w3.org/WAI/test-evaluate/easy-checks/">Easy Checks — A First Review of Web Accessibility</a> for the latest draft.</li>
  <li>Use: For the latest draft, see <a href="https://www.w3.org/WAI/test-evaluate/easy-checks/">Easy Checks — A First Review of Web Accessibility</a>.</li>
</ul>
</aside>

### Links to non-HTML documents

Provide the <b>file format</b> so the user knows what to expect.

<aside class="example">
<i>Example:</i><br>

<ul>
  <li>Avoid: To download the full report, see Annual Report 2025.</li>
  <li>Use: To download the full report, see Annual Report 2025 (PDF).</li>
</ul>
</aside>

### Punctuating links

If the linked text is at the end of a complete sentence, add a full stop after the link.  

If the linked text is a raw URL, do not add a full stop.

## Lists

Use the same grammatical structure for each list item to make it easy to read and scan. In other words, the list items should be written in the same form — for example, all nouns, all verb phrases, or all full sentences.

When items in a list consist of very long sentences, or of several sentences, consider reformatting the items as regular paragraphs of text.

### Capitalization and punctuation in lists

#### Text that introduces a list

When a sentence or phrase introduces a list in the body text, place a **colon** at the end of this text.

#### List items are complete sentences

Start each item with a <b>capital letter</b>.  

End each item in a full stop or a question mark.

<aside class="example">
<i>Example:</i><br>

<ul>
  <li>In spring I mulch the roses.</li>
  <li>In summer I grow vegetables.</li>
  <li>In autumn I sow and repair the lawn.</li>
</ul>
</aside>

#### List items are fragments or not complete sentences

Begin each item with a <b>lowercase letter</b> (except for [proper nouns](/style-guide/grammar/#proper-nouns)).  

End each item with no conjunction or punctuation.

<aside class="example">
<i>Example:</i><br>

Shopping list:

<ul>
  <li>bread</li>
  <li>milk</li>
  <li>eggs</li>
</ul>
</aside>

If distinction between "and" and "or" is necessary, specify the nature of the list beforehand, such as "one of the following" or "all of the following".

#### List items complete the introductory phrase or sentence in the body text

Treat all the items in the list as a grammatical part of the introductory phrase or sentence.  

Begin each item with a <b>lowercase letter</b>, even if the list is a numbered list.  

End each item with no punctuation.

<aside class="example">
<i>Examples:</i><br>

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
</aside>

## Numbers

### When to write as a digit

#### Ages, measurements, percentages, and ratios

Always use a <b>digit</b>:

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>She is 5 years old.</li>
  <li>They run 5 kilometres every day.</li>
  <li>He is 6 feet tall.</li>
  <li>We drink 2 litres of water a day.</li>
  <li>I bought 2 kilos of tomatoes.</li>
</ul>
</aside>

For these units, use the abbreviation *after* the digit:

* File sizes: 5GB, 1.2MB (capital letters)  
* Percentages: 9% (symbol)  
* Temperature: 25°C, 77°F  
* Times: 5 a.m., 10:30 p.m.   
  * **Exceptions:** 12 noon and 12 midnight   
    (not 12 p.m. or 12 a.m.)

### Digits versus words

#### Numbers showing quantity or order

Up to nine: use words.

From 10 and above: use digits.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>He invited nine friends.</li>
  <li>They bought 10 plants.</li>
  <li>She came first.</li>
  <li>It was the ninth time this happened.</li>
  <li>I was 10th in the queue.</li>
</ul>
</aside>

**Exceptions:** 

* See [Ages, measurements, percentages, and ratios](#ages-measurements-percentages-and-ratios).  
* Use words for very large numbers when they are rounded figures.

<aside class="example">
<i>Examples of writing very large numbers:</i><br>

1 million, 2.2 billion, 3.5 trillion
</aside>

#### Start of a sentence

If a number starts a sentence, use words or reword so as not to start with a number.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>Avoid: 10 of the 25 participants had issues completing the task.</li>
  <li>Use:</li>
  <ul>
    <li>Ten of the 25 participants had issues completing the task.</li>
    <li>Of the 25 participants, 10 had issues completing the task.</li>
  </ul>
</ul>
</aside>

#### Related numbers

With *related* numbers, where one number is usually written in digits and the other not, use <b>digits</b> for both.

<aside class="example">
<i>Example:</i><br>

We bought 1 bag containing 500 seeds. 
</aside>

#### Adjacent numbers

With *adjacent* numbers that express different categories of numbers, use a <b>mixture of words and digits</b>.

<aside class="example">
<i>Example:</i><br>

The cook needs twelve 2-pound bags of flour. 
</aside>

### Punctuating numbers

Numbers over 3 digits get commas.

<aside class="example">
<i>Examples:</i><br>

<ul>
  <li>9,000</li>
  <li>9,990,900</li>
</ul>
</aside> 

**Exceptions:** Use no punctuation for years, addresses, page numbers, or code line numbers.

## Referencing other works or the source of a quote

Use the `<cite>` attribute to mark up the title of a creative work.

<aside class="example">
<i>Example:</i><br>

According to <cite>The Hitchhiker’s Guide to the Galaxy</cite>, the answer to life, the universe, and everything is 42.
</aside>

## Symbols

Except where there is a lack of space (for example, in a table or chart), use words for the following symbols:

* <b>Ampersand:</b>  
  * <b>&</b>: Use “and” instead.  
* <b>Number sign (octothorpe):</b>  
  * <b>#</b>: Use “number” or a suitable noun instead.
 
<i>Examples:</i><br>

<ul>
  <li>Number 3 is correct.</li>
  <li>Statement 2 is true.</li>
</ul>
</aside> 
