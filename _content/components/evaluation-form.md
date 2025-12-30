---
title: "Evaluation form"
lang: en

---

This is a form to evaluate a success criterion or other type of checkpoint.

## Examples

### Full form

{% 
  include evaluation-form.html 
  id="a311" 
  criterion="A.3.1.1: Keyboard Access (Minimum)"
  criterion_short="A.3.1.1"
  level="Level A"
  text="All functionality of the authoring tool is operable through a keyboard interface without requiring specific timings for individual keystrokes, except where the underlying function requires input that depends on the path of the user's movement and not just the endpoints."
  link_to_report="/WAI/atag/report-tool/report#criterion-a311"
  link_to_resource="https://www.w3.org/TR/IMPLEMENTING-ATAG20/#sc_a311"
  link_to_resource_label="Implementing SC A.3.1.1"
%}

### Form without optional parameters 

{% include evaluation-form.html 
  id="a232" 
  criterion="A.3.1.2: No Keyboard Traps"
  criterion_short="A.3.1.2"
%}

## Code

```liquid
{%raw%}{%  
  include evaluation-form.html 
  id="a311" 
  criterion="A.3.1.1: Keyboard Access (Minimum)"
  criterion_short="A.3.1.1"
  level="Level A"
  text="All functionality of the authoring tool is operable through a keyboard interface without requiring specific timings for individual keystrokes, except where the underlying function requires input that depends on the path of the user's movement and not just the endpoints."
  link_to_report="/WAI/atag/report-tool/report#criterion-a311"
  link_to_resource="https://www.w3.org/TR/IMPLEMENTING-ATAG20/#sc_a311"
  link_to_resource_label="Implementing SC A.3.1.1"
%}{% endraw%}
```

### Parameters

`id="a231"`
: A unique identifier, so that users can link directly to this section. This can also be used to create IDs for the form elements and their labels.

`criterion="A.3.1.1: Keyboard Access (Minimum)"`
: The criterion being evaluated.

`criterion_short="A.3.1.1"`
: A shorter name for the criterion, this is used in accessible names in the form, like labels.

`text="Text"`
: Content for the criterion or checkpoint, this can be the full text, and can include collapseables like notes. (optional)

`level="Level AA"`
: The Level for this criterion (optional)

`link_to_report="/WAI/atag/report-tool/report#criterion-a311"`
: Link to this criterion as it is displayed in a final report (optional)

`link_to_resource="https://www.w3.org/TR/IMPLEMENTING-ATAG20/#sc_a311"`
: A link to a resource that explains more about this criterion (optional, but if used, also supply `link_to_resource_label`)
