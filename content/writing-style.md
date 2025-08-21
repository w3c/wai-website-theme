---
title: "Writing Style"
permalink: /writing/style/
ref: /writing/style/
lang: en
github:
  repository: w3c/wai-website-theme
  path: content/writing-style.md
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

This WAI Style Guide sets guidelines for writing material for the WAI website. The purpose is to support: 

* readability
* consistency
* better, easier translations

This is a living document that will be updated.

Please send questions, comments, and suggestions to [wai-eo-editors@w3.org](mailto:wai-eo-editors@w3.org?cc=shawn@w3.org&subject=WAI%20Style%20Guide wai-eo-editors@w3.org). 

Related resources: [W3C Manual of Style](https://w3c.github.io/manual-of-style/), [draftstyleguide](https://www.w3.org/2018/07/DraftStyleGuide), [Internationalization Quick Tips for the Web](https://www.w3.org/International/quicktips/), [WAI Translation Glossary](https://github.com/w3c/translation-glossaries/blob/master/general.md)

{::nomarkdown}
{% include box.html type="end" %}
{:/}

{::options toc_levels="2..3" /}
{% include toc.html %}

## Tone

WAI content should convey these qualities:

* Knowledgeable, Authoritative, Reliable, Credible
* Clear, Straight-forward
* Welcoming, Encouraging, Inspiring
* Modern, Up-to-date

Different types of documents have different tone, for example:

* Technical standards and most Policy resources: formal
* Standards support documents (WCAG Techniques, Understanding SCs, etc.): explanatory style
* Tutorials and how-to documents: concise and direct, also supportive and encouraging 
* Stories of people with disabilities and some intros: friendly, narrative tone that invites exploration and engagement

Generally avoid humor since it often does not work internationally.

## Specifics

### Punctuation

* [comma before conjunction](http://en.wikipedia.org/wiki/Serial_comma) (also known as Oxford comma and serial comma), e.g.: apples, oranges, and bananas.
* punctuation outside quoted terms
  * e.g.: This accessibility requirement is sometimes called sufficient "color contrast"; however, that is incorrect — technically it's "luminosity contrast".
  * (Note: Many American-English style guides, including the Chicago Manual of Style, recommend periods and commas inside quotes. Most British-English style guides recommend punctuation outside quotes. Coding requires proper nesting. Because most of our audience is more focused on proper code syntax than on America-English syntax, we chose punctuation outside quoted terms.)
* Commas after introductory prepositional clauses, especially in sentences that are a bit long or complex.
* Comma (or colon) after "for example," and "e.g.,". Note: for Recommendations and other formal docs, probably better to use "for example" instead of "e.g.".
* Titles, headings, labels, menu items do not have terminal punctuation unless a question mark is required.
* "For example," OK as own sentence, even if not full sentence. This is generally easier to read, even though not formally correct. Often you can add a word or few to make it more smooth.

  When need to be grammatically correct, use semicolon: 
  > Introduce different user needs for audio and video content; for example, for people who don’t see the video and for people who don’t hear the audio.
  
  When want to have simpler structure, instead of just splitting up the sentence:
  > Introduce different user needs for audio and video content. For example, for people who don’t see the video and for people who don’t hear the audio.

  Better to add words:
  > Introduce different user needs for audio and video content. For example, explain the needs of people who don’t see the video and people who don’t hear the audio.

See [Lists](#lists) section for punctuation of list items.

### Capitalization

* Titles, h1s, and menu items use headline-style capitalization (the first letter of major words is capitalized), unless otherwise noted below
  * For EOWG Resources and most WAI pages:
    * h2s and lower — usually use headline-style capitalization. Exceptions acceptable, especially for things like Tips
    * For WCAG Understanding and Techniques documents:
      * All headings use headline-style capitalization
      * Exception: WCAG Techniques titles and h1 use sentence-style capitalization (since they are long phrases)
* web/Web capitalization
  * web - lowercase as adjective, such as "web accessibility", "web page", "web application"
  * Web - can capitalize when referring to the World Wide Web, or leave lower case for consistency within a document
* WCAG success criteria (lowercase)
* Working Groups, Task Forces
  * XYZ Working Group - capitalize when talking about a specific working group, including, "the Working Group" without the name of the WG in the phrase.
  * working groups - lowercase when talking generically about working groups. However, OK to capitalize if seems better for consistency within a doc.
  * if in doubt, capitalize.
  * same for Task Forces.
* phrases with acronyms, e.g.: RTC, AAC
  * when used in a senetence, lowercase
  * real-time communication (RTC) capitalization (RTC background)
    * Real-Time Communication -- for headings and formal name of standards
    * real-time communication and real-time communications -- for the generic idea in sentences
        AAC example: "This registry supports augmentative and alternative communication (AAC) symbols in web content."

See [Lists](#lists) section for info on capitalization of list items.

### Spelling

We generally use US/American spellings. One exception: "ageing". (ageing background)

* dialogue / dialog
  * dialog for dialog box
  * dialogue for conversation, e.g., audio in transcriptions, captions, subtitles
  
### Lists

* Punctuation —
  No punctuation after bullet/list items that are not complete sentences. (except in very formal documents)
  Especially no semi-colons at the end of list items except in very rare cases in formal documents.
  If complete sentences, then end with periods. Otherwise, no punctuation.

  > This include things like:
  >  * people using assistive technology
  >  * people using adaptive strategies
  >  * people using other things

  instead of
  
  > This includes things like:
  > * people using assistive technology,
  > * people using adaptive strategies,
  > * people using other things.

* Capitalization — can be either lowercase or initial caps, depending on the type of information. Most are lowercase — generally:

  * if the bullets could be in a single sentence, then lowercase
  * if it is a heading (e.g., in-page contents), then initial caps
  * if the bullet item is a full sentence or multiple sentences, then usually initials caps

  > This includes people using:
  > * assistive technology
  > * adaptive strategies
  > * other things

  > The sections below address:
  > * Assistive technology that people use
  > * Adaptive strategies that people use
  > * Other things that people use

* Spacing — optionally, no space before lists, e.g., in [Contacting Orgs](http://www.w3.org/WAI/users/inaccessible.html)
  Style the p and ul or ol like this: 

  ```
  <p class="listintro">...such as:</p>
  <ul class="listwithp">
  ```
  
  to get:
  
  ```
  This includes people using:
    * assistive technology
    * adaptive strategies
    * other things
  ```
  
  Instead of:

  ```
  This includes people using:
  
    * assistive technology
    * adaptive strategies
    * other things
  ```

### Dates

* In most cases, put day first and write out the month. For example: 2 January 2022
  It's OK to abbreviate it. For example: 2 Jan 2022
* In rare cases when it does not work well to use letters for the month, put the year first (per ISO-8601), then month, then date: YYYY-MM-DD. For example: 2022-01-02
* Do not put the date or month as numbers first, because it is ambiguous internationally. 01-02-2022 is 2 January in some places and 1 February in some places.
* For input fields with no format requirement, default to local setting of 00 Month YYYY or Month 00, YYYY. If field has information, include this text: "You can use any date format. Write out the month to make it clear internationally. (The date format 01-02-2022 is ambiguous — it is 2 January in some places and 1 February in some places.)" more info: [format](https://github.com/w3c/wai-website/issues/212), [text](https://github.com/w3c/wai-website/issues/213)

### Personal pronouns

[ EOWG approved, open for broader W3C review:  ]

**Generally avoid using gender pronouns** (she/her, he/his); except:

* for real people when you use the personal pronoun that they use for themselves
* in named personas and use cases

Some alternatives:

* Use plural subject and  pronoun.
  For example, instead of:

  > If an author can use text to achieve the same visual effect, **she** should present the information as text...

  Change the subject and pronoun to plural:

  > If **authors** can use text to achieve the same visual effect, **they** should present the information as text...

* Use the subject instead of a pronoun.
  For example, instead of:

  > If an author can use text to achieve the same visual effect, **he** should present the information as text...

  Replace the pronoun with the subject:

  > If an author can use text to achieve the same visual effect, **the author** should present the information as text...

* Rewrite the sentence, still using [active voice](#active-voice).

**Avoid using singular subject and plural pronoun.** (e.g., "If **an author** can do xyz, **they** should do it.".)

*Rationale:* It is harder for many people to understand and seems grammatically incorrect to many people — especially some people with language disabilities.

Note:

* Related information in the [Personas and use cases section](personas=and-use-cases)
* Using "he or she" addresses many issues, yet not that of people who do not want to be referred to as either "he" or "she".
* This applies to resources in English. There may be different [guidance for translations](https://github.com/w3c/translation-glossaries).

### One word, two word, hyphenated

* checkbox, checkboxes (one word)
* e-mail vs. email - [proposed change under review](#e-mail--email)
* peer-to-peer connection
* Real-Time Communication — for headings and formal name of standards
* real-time communication and real-time communications — for the generic idea in sentences
* short-term memory (hyphenated)
* web page (two words)
* website (one word)

### Disability terminology, people first language

Some people prefer "people first language". Some people do not like it. Below are general guidelines. Groups are encouraged to consider options that work best for their document. One approach is to use both constructs in the same document.

* When the primary target audience is people not familiar with disabilities, consider using people-first language: "people with disabilities", "people with physical impairments", "people who are blind", etc.
* When the primary audience is disabled people, consider using: "disabled people", "blind people", etc.
* Avoid "the disabled", "handicapped"...
* Some specifics:
  * Most Deaf people capitalize "Deaf".
  * Most autistic people prefer "autistic people", not "people with austism".
  * Most blind people prefer "blind", not "visually impaired".

### Referring to xxAG (WCAG 2; singular)

* **WCAG Versions**
  * WCAG 2
    * Use "WCAG 2" to refer to all of the versions: WCAG 2.0, WCAG 2.1, WCAG 2.2 (etc.); e.g., [WCAG 2 Overview](https://www.w3.org/WAI/standards-guidelines/wcag/)
    * Don't use "WCAG 2.x" unless it is particularly important to emphasize different versions.
    * If referencing a specific TR doc, then use the dot-number, e.g., "conforms to [Web Content Accessibility Guidelines (WCAG) 2.1](https://www.w3.org/TR/WCAG21/)
  * WCAG 3
    * Use "WCAG 3" in most cases; e.g., [WCAG 3 Introduction](https://www.w3.org/WAI/standards-guidelines/wcag/wcag3-intro/).
    * Can use WCAG 3.0 for references to the TR doc.
  * Can use just "WCAG" in the few places where version number is not important, (since WCAG 1 is so old and WCAG 3 is a ways away), especially where it's written out "Web Content Accessibility Guidelines (WCAG)".
    For example: [quick ref](https://www.w3.org/WAI/WCAG21/quickref/) main heading "WCAG" with no number and subheading "Web Content Accessibility Guidelines (WCAG) 2".

* Singular — Treat WCAG, ATAG, UAAG as singular, without "the" in front.

  Use:
  > * Follow WCAG...
  > * Follow Web Content Accessibility Guidelines (WCAG)...
  > * (yet: Follow the WCAG standard...)

  instead of:
  > * Follow the Web Content Accessibility Guidelines (WCAG)...
  
  (no "the")

**WCAG 2 and WCAG 3 have different names**

* WCAG 2 = Web Content Accessibility Guidelines
* WCAG 3 = W3C Accessibility Guidelines

### Other words and phrases

* Use "description" and "description of visual information", rather than "audio description" or "video description" in most cases.

  * Usually include on first use:

    > Description of visual information is called audio description, video description, or described video in different areas.

  * ([Background in GitHub issue with links to more info](https://github.com/w3c/wai-media-guide/issues/182))
  * *Note: we are in the process of updating W3C resources*

* **Avoid "color blind" alone,** primarily because it can be misunderstood that people do not see any color.
  * In almost all W3C documents, especially referring to a person or persona, use:

    > cannot distinguish between certain colors (often called “color blindness”)

  * In rare cases, when addressing the medical condition, use “color vision deficiency”. Usually do not use an acronym, because it is not widely known. (The only document identified so far for this use is [Accessibility Requirements for People with Low Vision](https://www.w3.org/TR/low-vision-needs/#color-vision)).
  * *([Background in GitHub issue with links to LVTF and EOWG meeting minutes](https://github.com/w3c/low-vision-a11y-tf/discussions/121))*
  * *Note: we are in the process of updating W3C resources*

* **"speech recognition"** is different from "voice recognition". In most WAI documents, we mean "speech recognition".
  * "speech recognition" is about recognizing words for speech-to-text (STT) transcription, virtual assistants, and other speech user interfaces. (Most speech recognition programs can be trained to understand a specific person's speech better, yet the programs don't identify the person from their voice.)
  * "voice recognition" is technology that identifies who the speaker is, not the words they're saying. It's also called "speaker recognition". Some virtual assistants do both voice/speaker recognition and speech recognition.
  * *(This distinction is not well known, and the terms are often used interchangeably, which is technically incorrect. Let's work on using the terms correctly in W3C documents.)*
  * *Note: we are in the process of updating W3C resources*

* **URI** (not URL) - based on W3C Manual of Style
* **"for example"** instead of "for instance" usually
* **"see"** a resource for more information, instead of "refer to" usually — as in:

  > For more about XYZ, see ABC resource.

* **"conformance"** is a complicated word. ([readability comment](https://github.com/w3c/wai-website/issues/7)) Consider using a simpler form ("conform"), or "meets", or another word when appropriate. When need to use "conformance", consider [defining it](https://w3c.github.io/wai-eval-overview/test-evaluate/#conformance).

  Instead of "conformance":
  > Ensure conformance to WCAG.
  
  Use:
  > Ensure that your application meets WCAG.
  
* **Avoid "but"** and word positively.

  Instead of:

  > This benefits not only users, but also stakeholders.

  Revised:

  > This benefits users, and also stakeholders.

* **"braille"** is lowercase (unless referring to the person Louis Braille)
* **"hand-eye coordination"** instead of "eye-hand coordination" (per COGA Task Force)

### Images

**Note:** The style guidance on images below is an early rough draft under development.
Please add your comments in [GitHub 288](https://github.com/w3c/wai-website/issues/288). Thanks!

#### Illustrations of screens

* Generally avoid identifying information. That is, do not use actual screen captures of an organization's web page.
  Exception: OK to use W3C website to show good design.
* Remember to put useful descriptions in the surrounding text or in alt text.
* Examples of illustrations on WAI website: [Designing Tips](https://www.w3.org/WAI/tips/designing/)

#### Drawings

* Use [WAI site colors](https://wai-website-theme.netlify.app/components/colors/).
* Follow the style of the drawings in the [business case](https://www.w3.org/WAI/business-case/) and [media resource](https://www.w3.org/WAI/media/av/).

#### Icons

Before working on new icons, please check in with [Shawn](https://www.w3.org/People/Shawn/).

Unfortunately, our icon documentation is out of date. If someone with SVG skills wants to help update the icons resources, please contact Shawn. 

## Editorial style

### Simple language

* Use simple, clear language as appropriate for the content.
* Avoid complex sentence structure and long sentences, as possible.
* Avoid "wall of text", that is, dense paragraphs without anything breaking them up. Use heading, bullets, and graphics.
* Remember that WAI resources are read by many people whose first language is not English. Also, many resources will be translated.
* For most resources, try for lower secondary education reading level or lower. (see note in Language tools)

Some plain language resources (not W3C):

* [Easy-to-read checklist (pdf)](https://www.inclusion-europe.eu/wp-content/uploads/2020/06/Easy-to-read-checklist-Inclusion-Europe.pdf)
* [Use simple words and phrases | plainlanguage.gov](https://www.plainlanguage.gov/guidelines/words/use-simple-words-phrases/)
* [1Up Your Writing with Plain Language (Presentation)](http://www.handcoding.com/presentations/plainwriting/#cover)

More info:

* Tools for reading level and language simplification: [Language tools](#language-tools)
* Additional guidance in [WCAG Understanding SC 3.1.5 Reading Level](https://www.w3.org/TR/UNDERSTANDING-WCAG20/meaning-supplements.html)
* [Edit Examples](#appendix-edit-examples)
* Note that ["accessibility" adds one grade level](accessibility-adds-one-grade-level)

### Active voice

Use active voice, that is, the subject of sentence performs the action.

Avoid passive example:

  > There are no plans to submit WCAG 2.1 to become an ISO Standard. WCAG 2.2 is being considered for submission. Additional information will be provided when available.

Revised to be active:

  > We are not planning to submit WCAG 2.1 to become an ISO standard. We might submit WCAG 2.2. We will provide updated information here when it is available.

### Document links in sentences

Whenever feasible, put linked documents at the end of sentences. Several EOWG folks feel this improves reading flow for visual readers, makes it easier for screen reader users to know where the document title ends, etc. For example, instead of:

  > See [Awesome Document on Web Accessibility](http://www.w3.org/wai/) for guidance on making the whole Web accessible.

Use:

  > For guidance on making the whole Web accessible, see [Awesome Document on Web Accessibility](http://www.w3.org/wai/).

### Front-load conditional sentences

For example, instead of:

  > Use empty alternative text when an image is purely decorative.

Use:

  > For images that are just decorative, use empty alternative text.

### Use strong action statements

For example, instead of:

  > Try to write link text so that it describes the content of the link target in a meaningful way.

Use:

  > Write link text so that it describes the content of the link target in a meaningful way.

### Simplify sentence construction

For example, instead of:

  > Some audiences, such as in doctors or engineers, require complex terminology, but still seek opportunities to simplify.

Use:

  > Use language suited to your audience needs, especially where the topic might include complex terminology.

### Remove superfluous words

For example, instead of:

  > Provide text alternatives for all images.

Use:

  > Provide text alternatives for images.

### Avoid subjective adjectives

For example, instead of:

  > Policies will vary greatly across organizations.

Use:

  > Policies will vary across organizations.

### Personas and use cases

[ EOWG approved, open for broader W3C review:  ]

To support inclusiveness:

* In persona names, pictures, and descriptions, use different characteristics such as:
  * ethnicities
  * genders
  * ages
  * disabilities
* Avoid stereotypes (e.g., all coders and managers are male).
* For persona pronouns, it's OK to use she/her/hers, he/him/his, they/them/their:
  * **For most personas, use gender-specific pronouns.**
  * Rationale: It is easier to understand, it is easier grammatically, and it respects people who want to be referred to with a gender pronoun.
  * When there are several personas, consider also including personas who use the pronouns they, them, their.
  * Note: Be aware that a plural pronoun for an individual will seem wrong and will be confusing to some readers, especially people with different English language abilities. Consider approaches to limit confusion, such as:
    * Use the persona's given name instead of pronoun in most places.
    * Before using the plural pronoun, note that in the persona text; e.g.: "Tal uses the personal pronouns they, them, their".

Note:

  * Related information in the [Personal pronouns section](#personal-pronouns)
  * This applies to resources in English. There may be different [guidance for translations](https://github.com/w3c/translation-glossaries).

### Document titles

This primarily applies to EOWG and other WAI Resources.

**[DRAFT]**

Two options:

  * Option 1 (descriptive) – Name the article with a descriptive name so that people will know what the article is going to be about before they start reading it.
  * Option 2 (creative) – Name the article with a creative, catchy name so that people are intrigued to start reading it to find out what it is about.

Neither is preferred, however “how to” articles lend themselves better to Option 1, more general articles to Option 2. 


## Reading Level

### Language tools

Tools are helpful. Yet, understand their limitations, e.g., [Readability Formulas... Avoid Them](https://www.uxmatters.com/mt/archives/2019/07/readability-formulas-7-reasons-to-avoid-them-and-what-to-do-instead.php)

**Important: W3C does not endorse specific tools.** These are just tools that some editors have found useful. No endorsement implied!

* [HemmingwayApp](http://www.hemingwayapp.com/) - gives reading level, highlights passive voice, provides edit suggestions, flags complex sentences
* [Readability Test Tool](https://www.webpagefx.com/tools/read-able/)

### "accessibility" adds one grade level

The word "accessibility" generally increases the automatically-calculated reading level of WAI documents; however, give our topic and audience, it functionally does not increase the reading level that much.

As an experiment, we took the main content of [Accessibility - W3C](https://w3c.github.io/accessibility-intro/) and replaced the 33 instances of "accessibility" with "dog" and the reading level reported by [HemmingwayApp](http://www.hemingwayapp.com/) went down a grade level. Other content with another tool yielded the same results: 1 grade-level lower.

## General Good Practice

### Abbreviations and acronyms

* Write out abbreviations and acronyms the first time you use it on a page. Then you can use the abbreviation or acronym for all other references. [WCAG Technique G97](https://www.w3.org/TR/WCAG20-TECHS/G97.html)
  * First use: World Wide Web Consortium (W3C)
  * Second use: W3C
* If the abbreviation or acronym is very well known by the target audiences (e.g., HTML), you don't need to spell it out and can just use `<abbr>`. If in doubt, spell it out.
* Don't use the `<abbr>` element for all instances of the abbreviation or acronym throughout a document.

### Numbers

* Use words for numbers that start a sentence, and for numbers up to one hundred (guidance based on documents where descriptive or narrative text is predominant and numbers are not the significant focus)
* Use a mixture of words and numbers when mixing uses of numbers, such as "Enter two 3s."
* Numbers over 3 digits get commas:
  * 999
  * 1,000
  * 150,000
* Write out big numbers in full. Don’t use abbreviations (e.g. 1,000 not 1 k).

## Notes

* [capitalization thread](https://lists.w3.org/Archives/Public/wai-eo-editors/2017Jun/0042.html)

### ageing background

Background from Judy:

  > This word is slightly different than others with different UK and US spelling--specifically, people who haven't see the "other" version previously sometimes don't seem to recognize the word, rather than just thinking that is is spelled oddly, like color and colour. So what we did for a while was to use one followed by the other in parentheses the first time.
  
  > In principle the solution should be to switch to the US spelling, but when we used only that we got complaints and a bit of derision from the Europeans, and then vice versa.

  > ...If you want to swap back I just recommend putting the UK spelling in parens.

## Appendix: Edit Examples

* Instead of:
  > WAI materials should be created and edited with emphasis of brevity and use of bullets over paragraphs of text. Graphics, icons, and other such cues may be used to create visual anchors and break up presentation to avoid subjecting users to a "wall of text".

  Edit to active voice:
  > Avoid "wall of text", that is, dense paragraphs without anything breaking them up. Use bullets, graphics, and headings.

* Instead of:
  > Your feedback to an organization can help improve the accessibility of websites for you and many other people who use the websites. Website owners have many priorities for changes and improvements, and the more an organization hears about accessibility from people who use their website, the more likely it is that accessibility will become a higher priority. Positive feedback is useful, as well as critical feedback.

  Reduce 66 words to 30.
  > Your input helps organizations understand the importance of accessibility to you and other site visitors - understanding that may encourage them to prioritize accessibility improvements. Positive feedback can be especially useful. 

## Changelog

Most changes are not listed here. You can use the "View history" and "Compare selected revisions" to get a changelog.

Here is one change to highlight: Under "[Personal pronouns](#personal-pronouns)"

* was: "for real people when you use their preferred pronoun"
* changed to: "for real people when you use the personal pronoun that they use for themselves"
* rationale: to avoid 'preferred pronoun' and be clear and unambiguous, per [GitHub comments starting here](https://github.com/w3c/idcg/issues/15#issuecomment-674244744)
    
## Change Proposals

### e-mail &rarr; email

Proposed change from hyphenated "e-mail" to not hyphenated "email".

Rationale: [Chicago Manual of Style](https://www.chicagomanualofstyle.org/qanda/data/faq/topics/InternetWebandOtherPost-WatergateConcerns/faq0001.html), [AP Style Guide](https://twitter.com/apstylebook/status/48798366980780033?lang=en), and several others.

Con: Harder for some people with language processing disabilities and some non-native speakers to process it without the hyphen. 

## Document Info

**Status:** Fairly stable. Updated periodically.

Editors: Shawn Lawton Henry, Sharron Rush. Contributors: Kevin White and participants of EOWG. Developed by the Education and Outreach Working Group (EOWG).

Questions and feedback welcome to [wai-eo-editors@w3.org](mailto:wai-eo-editors@w3.org) (a publicly archived list) 
