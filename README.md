# poimandres.el

An Emacs theme based on the [Poimandres](https://github.com/drcmda/poimandres-theme)
VS Code theme, in two variants:

- `poimandres` — the default dark theme
- `poimandres-storm` — a slightly lighter, bluer dark theme

## Installation

Copy `poimandres-common.el`, `poimandres-theme.el`, and
`poimandres-storm-theme.el` into one directory on your
`custom-theme-load-path`, then enable a variant in your init file:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'poimandres t)        ; or 'poimandres-storm
```

With `use-package`:

```elisp
(use-package poimandres-theme
  :load-path "~/.emacs.d/themes"
  :config (load-theme 'poimandres t))
```

The themes require Emacs 25.1 or later and no third-party packages. Faces
for Emacs 29+ tree-sitter modes, Flymake, Flycheck, Company, Vertico,
Orderless, Ivy, Org, Markdown, Dired, Magit, diff-hl, git-gutter, web-mode,
and doom-modeline are included and apply when those packages are present.

VS Code colors that use transparency are pre-blended against each
variant's background, since Emacs faces cannot be translucent.
