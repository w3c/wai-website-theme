---
title: "Design Components"
permalink: /components/
lang: en
# translators: # Uncomment (remove #) for translations, one - name line per translator.
# - name: Translator 1
# - name: Translator 2
# contributors:
# - name: Contributor 1
# - name: Contributor 2
github:
  repository: w3c/wai-website-theme
  path: _components/index.md
footer: > # Text in footer in HTML
  <p> This is the text in the footer </p>
---


In this section, you can find the WAI design components and how to use them. There is also information on where they are used.

## Adding a new Design Component

Before adding: 

* Ensure this component is a good candidate for reuse throughout the site. 
* Feel free to test it in a specific project repository first. You can put it in the `_includes` folder and include it like any other component. Then, when it is ready, embed it in this central repository.

Steps to add:

* In the `_includes` folder, add `your-component.html` to describe the markup
* In the `_components` folder, add:
  *  `your-component.md` to document the component with one or more instances. Usually each variation has a Markdown example and an example of rendered output. It is encouraged to add a list of pages that use this component
  *  `your-component.css` to add CSS (if it's in `_components`, it will get included; manually run `gulp css` to update the CSS file)

Then commit the HTML, CSS (output of `gulp css`) and documentation, and [file a Pull Request](https://github.com/w3c/wai-website-theme/compare).
