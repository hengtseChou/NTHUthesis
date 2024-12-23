# NTHU zh-TW Thesis Template

This project is a fork of [elsa-lab/NTHUthesis](https://github.com/elsa-lab/NTHUthesis), with the following major changes:

- Switched the compiler and the relevent packages from `pdfLaTeX` to `XeLaTeX`.
- Dropped `zhmode` completely, as zw-TW is now the default setup.
- Factored `thesis_main.tex` into seperate `.tex` files, allows easier navigation when editing.
- Implemented/Overwrote mathematical environments with zw-TW, including:
  - `theorem` (定理)
  - `definition` (定義)
  - `corollary` (推論)
  - `proposition` (性質)
  - `lemma` (引理)
  - `example` (例)
  - `proof` (證明)
- Currently the bibliography style is customized as [agsm style](https://www.bibtex.com/s/bibliography-style-harvard-agsm/) with biblatex. One may modify it as needed at the top of `main.tex`.
- We use arabic numbers in the cover page.

## Usage

Download the .zip file, navigate to projects page at overleaf -> New Project -> Upload Project -> Select a .zip file.

Make sure you set the compiler to `XeLaTeX` in the menu.

## Example

Check out `example/thesis.pdf`. Note that all the content are dummy content generated via ChatGPT.

## Overleaf template

- Link: to be updated.
