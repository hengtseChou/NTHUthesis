# How to Use the NTHUthesis LaTeX Class

This README describes how to use the NTHUthesis class with LaTeX to produce high quality typeset theses that are suitable for submission to National Tsing Hua University (NTHU).

## Class Options

There are two class options that can be used to control the behavior of NTHUthesis. These are specified in the traditional LaTeX way. For example,

```latex
\documentclass[master]{NTHUthesis}
```

### `master`, `phd`

NTHUthesis offers two modes for typesetting theses. The `master` mode will produce theses for a master's degree. On the other hand, the `phd` mode will produce doctoral theses.

### `nowatermark`

By default, NTHUthesis produces theses with watermarking. However, the watermark can be omitted by specifying the `nowatermark` option. For example,

```latex
\documentclass[phd,nowatermark]{NTHUthesis}
```

## Provided Commands

- `\makecover`: Create a cover that is suitable for submission to NTHU.
- `\maketoc`: Create a table of contents, including the list of figures and the list of tables.
- Thesis information is specified in `thesis_info.tex` through the following commands:
  - `\titleZH`: Title in Chinese
  - `\titleEN`: Title in English
  - `\instituteZH`: Institute in Chinese
  - `\studentID`: Author's student ID
  - `\studentZH`: Author's name in Chinese
  - `\studentEN`: Author's name in English
  - `\advisorZH`: Advisor's name in Chinese
  - `\advisorEN`: Advisor's name in English
  - `\yearZH`: The year of the dissertation defense 
  - `\monthZH`: The month of the dissertation defense

## Provided Environments

- `abstractZH`: Create a chapter of the abstract in Chinese.
- `abstractEN`: Create a chapter of the abstract in English.
- `acknowledgementsZH`: Create a chapter of acknowledgements in Chinese.
- `acknowledgementsEN`: Create a chapter of acknowledgements in English.

## Minimal Working Example

### `thesis_main.tex`

This is a template for typesetting the main manuscript that is suitable for submission. One can access the output of this template through `exmaples/thesis_main.pdf`.

### `thesis_cover.tex`

This is a template for typesetting the cover without watermarking. One can access the output of this template through `exmaples/thesis_cover.pdf`.

### `thesis_abstracts.tex`

This is a template for typesetting the abstract of the main manuscript. One can access the output of this template through `exmaples/thesis_abstracts.pdf`.

## Reference

[國立清華大學-教務註冊組-碩博士畢業相關規定](http://registra.site.nthu.edu.tw/p/404-1211-5155.php?Lang=zh-tw)
