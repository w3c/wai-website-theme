---
title: "Your Report"
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
inline_css: |
---

The Your Report box gives users of accessibility reporting applications an overview of how far along they are in their current process. 

## Used by

This component is used by: 

* [ATAG Report Tool](https://w3.org/WAI/atag/report-tool)

## Code

Embedding your report:

```liquid
{%raw%}{% include your-report.html
   description="Reported on 8 of 52 Level&nbsp;A,&nbsp;AA Success Criteria."
   heading_before="Report for"
   heading="GreatCMS"
%}{% endraw%}
```

### Making it work

Add some JavaScript to make the show/hide button do this:

- toggle `your-report--expanded` class (it should be on when this is expanded, it should be left out if not)
- toggle all content besides the show hide button (there should only be other content if it is expanded)

### Parameters

`heading=""`
: Heading that describes the current report, for instance, the name of the website or application being reported on.

`heading_before=""`
: Text that goes before the heading, for instance “Report for”.

`description=""`
: A real time description of the current status of the report, for instance, “Reported on 8 of 52 Level&nbsp;A,&nbsp;AA Success Criteria.”.


## Examples

### Not expanded

{% include your-report.html
  description="Reported on 8 of 52 Level&nbsp;A,&nbsp;AA Success Criteria."
  heading_before="Report for"
  heading="GreatCMS"
  expanded="false"
%} 

### Expanded

{% include your-report.html
  description="Reported on 8 of 52 Level&nbsp;A,&nbsp;AA Success Criteria."
  heading_before="Report for"
  heading="GreatCMS"
  expanded="true"
%} 

