---
title: "Images"
redirect_from:
  - /writing/images/
lang: en
---

{::nomarkdown}
{% include box.html type="start" title="Summary" class="" %}
{:/}

There are several considerations when using images on the WAI site.

{::nomarkdown}
{% include box.html type="end" %}
{:/}


{% include toc.html %}

## Image Types

* **SVG** is used for icons and simple, scalable graphics. It is also the source of many PNG graphics.
* **PNG** is also used for graphics but is less scalable.
* **JPG** should only be used when the graphic has photographic content.

## Directory of images in a repository

* All production images should be in `content-images/wai-repo-name`
* All images that are editable should be stored in `_content-images-source` for future reference

## Exporting SVGs

Use the SVGs where possible. However there are two good reasons to export them to PNGs:

* File size
* Fonts

SVGs, especially with embedded fonts can be very large. Use the export function of any SVG-compatible program to export to PNG. Usually selecting twice the export size is key to get a crisp display on high resolution devices. (So when the default export size is 400x200px, set it to 800x400px.)

## Graphics with text

Graphics with text need to be produced in a way that keep them editable. That is only the case with SVGs. All SVGs with text should be in a folder named `_content-images-source` in the main directory for a resource.

All translations should also be in editable form in that folder.

### Embedding the font

When using text in graphics, the font should be embedded in the SVG to make it easily portable and editable. This will often massively increase the size of the image but is needed to keep it portable and editable.

You can [download the currently used fonts for embedding]({{ "/resources/notoSans.zip" | relative_url }}).

### Translations

When translating a graphic, the translated graphic should be saved in the `_content-images-source` directory, too, with a language suffix added.

For example, the German translation of a `bridge.svg` file should be saved as `bridge.de.svg`. Then the `bridge.de.svg` should be exported to PNG format and saved in the `content-images/wai-repo-name` (where “wai-repo-name” is replaced by the name of the repository) directory.

## Adding images to resources

The description on how to invoke images, and further options, are available on the [Image Design Component Page](/components/images/).


