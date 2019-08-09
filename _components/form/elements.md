---
title: "Form elements"
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

<div class="field">
  <label for="inputa">Textfield</label>
  <input type="text" id="inputa">
</div>

<div class="field">
  <label for="inputb">Searchfield</label>
  <input type="search" id="inputb">
</div>

<div class="field">
  <label for="select">Select</label>
  <select id="select"><option>Test 1</option><option>Test 2</option><option>Test 3</option><option>Test 4</option></select>
</div>

<div class="field">
  <label for="accstmnt_orginfo_approved_function">Function</label>
  <input type="text" id="accstmnt_orginfo_approved_function" placeholder="Director of Communication">
</div>

<fieldset class="field" id="conformance-status">
  <legend class="label">Conformance status</legend>
  <p class="expl">Describe the current conformance status.</p>

  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_inapplicable" checked="">
    <label for="accstmnt_conformance_inapplicable">None</label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_full">
    <label for="accstmnt_conformance_full"><span class="status">Fully conformant</span>: <span class="meaning">the content fully meets the standard  without any exceptions</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_partial">
    <label for="accstmnt_conformance_partial"><span class="status">Partially conformant</span>: <span class="meaning">Some parts of the content do not fully meet the standard</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_nonconformant">
    <label for="accstmnt_conformance_nonconformant"><span class="status">Non conformant</span>: <span class="meaning">the content does not meet the standard</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_unknown">
    <label for="accstmnt_conformance_unknown"><span class="status">Not assessed</span>: the content has not been assessed or the evaluation results are not available</label>
  </div>
</fieldset>

{% include excol.html type="start" id="source" %}

## Source Code

{% include excol.html type="middle" %}

```html

<div class="field">
  <label for="inputa">Textfield</label>
  <input type="text" id="inputa">
</div>

<div class="field">
  <label for="inputb">Searchfield</label>
  <input type="search" id="inputb">
</div>

<div class="field">
  <label for="select">Select</label>
  <select id="select"><option>Test 1</option><option>Test 2</option><option>Test 3</option><option>Test 4</option></select>
</div>

<div class="field">
  <label for="accstmnt_orginfo_approved_function">Function</label>
  <input type="text" id="accstmnt_orginfo_approved_function" placeholder="Director of Communication">
</div>

<fieldset class="field" id="conformance-status">
  <legend class="label">Conformance status</legend>
  <p class="expl">Describe the current conformance status.</p>

  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_inapplicable" checked="">
    <label for="accstmnt_conformance_inapplicable">None</label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_full">
    <label for="accstmnt_conformance_full"><span class="status">Fully conformant</span>: <span class="meaning">the content fully meets the standard  without any exceptions</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_partial">
    <label for="accstmnt_conformance_partial"><span class="status">Partially conformant</span>: <span class="meaning">Some parts of the content do not fully meet the standard</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_nonconformant">
    <label for="accstmnt_conformance_nonconformant"><span class="status">Non conformant</span>: <span class="meaning">the content does not meet the standard</span></label>
  </div>
  <div class="radio-field">
    <input type="radio" name="accstmnt_conformance" id="accstmnt_conformance_unknown">
    <label for="accstmnt_conformance_unknown"><span class="status">Not assessed</span>: the content has not been assessed or the evaluation results are not available</label>
  </div>
</fieldset>
```

{% include excol.html type="end" %}