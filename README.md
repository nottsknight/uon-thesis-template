# UoN thesis template
Repo template for PhD theses at the University of Nottingham

## Included packages
The `uon-thesis` package included at the start of the main template
includes the following packages:
 * *Font and language settings*
   * `inconsolata` for typewriter text
   * `mathpazo` and `domitian` for regular text
   * `fontenc` and `inputenc` to ensure proper handling of encoded text
   * `csquotes` for proper formatting of quotations
 * *Graphical and layout settings*
   * `graphicx` to allow including images
   * `geometry` to set the page margins
   * `hyperref` to make citations and references in the resulting PDF clickable
   * `pdflscape` to allow insertion of landscape pages
   * `tocbibind` to allow customisation of the table of contents
 * *Table layout packages*
   * `booktabs` to provide styling
   * `caption` and `subcaption` to allow subfigures and subtables
   * `tabularx` to allow more flexibility in table definitions
 * *Bibliography packages*
   * `biblatex` allows for more flexible presentation and organisation of bibliographies
 * *Miscellaneous packages*
   * `amsmath` to provide a wide range of mathematical symbols
   * `subfiles` to allow individual chapters, etc. to be built as separate documents or included in the main document

## New commands
 * `\etal` prints *et al.* with correct italicisation and spelling
