---
title: "Tables"
lang: en
inline_css: |
---

Tables have three styles that you can use with classes:

* [Normal](#normal): No class
* [Dense](#dense): `class="dense"` – Tighter spacing.
* [Quiet](#quiet): `class="quiet"` – Lighter colors.
* [Dense & Quiet](#dense-quiet): `class="dense quiet"` – Lighter colors and tighter spacing.

**Note:** When you use tables, the author of the resource must implement a fallback for smaller viewports. As tables are very hard to make responsive without adding additional information to the cells that are revealed when on mobile, try to avoid tables when possible. Alternatives include headings and paragraphs, description lists and disclosure widgets.

**Note:** Usually we use HTML tables instead of markdown tables as they are much easier to edit and read in the source code.

## Normal

<table>
  <caption>T1.1: Table Caption</caption>
  <thead>
    <tr>
      <th>Table Header</th>
      <th>Table Header</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Table Header (tbody)</th>
      <td>
        <p>1.1.1 Duis aute irure dolor: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <ul>
          <li>Bullet List Item 1: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to Guideline 4.1 for additional requirements for controls and content that accepts user input.)</li>
          <li>Bullet List Item 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
          <li>Bullet List Item 3: Lorem ipsum dolor sit amet, consectetur adipiscing eli.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <th><a href="#">Table Header (tbody)</a></th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Table Header (tfoot)</th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tfoot>
</table>

## Dense

<table class="dense">
  <caption>T1.1: Table Caption</caption>
  <thead>
    <tr>
      <th>Table Header</th>
      <th>Table Header</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Table Header (tbody)</th>
      <td>
        <p>1.1.1 Duis aute irure dolor: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <ul>
          <li>Bullet List Item 1: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to Guideline 4.1 for additional requirements for controls and content that accepts user input.)</li>
          <li>Bullet List Item 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
          <li>Bullet List Item 3: Lorem ipsum dolor sit amet, consectetur adipiscing eli.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <th><a href="#">Table Header (tbody)</a></th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Table Header (tfoot)</th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tfoot>
</table>


## Quiet

<table class="quiet">
  <caption>T1.1: Table Caption</caption>
  <thead>
    <tr>
      <th>Table Header</th>
      <th>Table Header</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Table Header (tbody)</th>
      <td>
        <p>1.1.1 Duis aute irure dolor: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <ul>
          <li>Bullet List Item 1: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to Guideline 4.1 for additional requirements for controls and content that accepts user input.)</li>
          <li>Bullet List Item 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
          <li>Bullet List Item 3: Lorem ipsum dolor sit amet, consectetur adipiscing eli.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <th><a href="#">Table Header (tbody)</a></th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Table Header (tfoot)</th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tfoot>
</table>

## Dense & Quiet {#dense-quiet}

<table class="dense quiet">
  <caption>T1.1: Table Caption</caption>
  <thead>
    <tr>
      <th>Table Header</th>
      <th>Table Header</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Table Header (tbody)</th>
      <td>
        <p>1.1.1 Duis aute irure dolor: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <ul>
          <li>Bullet List Item 1: If non-text content is a control or accepts user input, then it has a name that describes its purpose. (Refer to Guideline 4.1 for additional requirements for controls and content that accepts user input.)</li>
          <li>Bullet List Item 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
          <li>Bullet List Item 3: Lorem ipsum dolor sit amet, consectetur adipiscing eli.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <th><a href="#">Table Header (tbody)</a></th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Table Header (tfoot)</th>
      <td><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p></td>
    </tr>
  </tfoot>
</table>