---
title: "Components"
lang: en
---

The WAI website theme includes some reusable components, using [Jekyll includes](https://jekyllrb.com/docs/includes/). Includes are located in the `_includes` folder.

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
