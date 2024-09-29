;;; poimandres-theme.el --- A dark theme inspired by poimandres dark theme. -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: kamm3r <https://github.com/kamm3r>
;; Maintainer: kamm3r <https://github.com/kamm3r>
;; Source: https://github.com/drcmda/poimandres-theme
;;
;;; Commentary:
;; Poimandres is a minimal, frameless dark-theme inspired mostly
;; by blueberry. This theme tries to focus on semantic meaning instead
;; of color variety. You'll find that it colors things like errors, voids, 
;; throws and deletes in red, types are slighty darker so that the spotlight 
;; is on the code, green new's, etc.
;;; Code:

(deftheme poimandres
  "A dark theme inspired by poimandres dark theme.")

(let* ((class '((class color) (min-colors 89)))
       (256color (eq (display-color-cells (selected-frame)) 256))
   (brightYellow       "#fffac2")
   (brightMint         "#5DE4c7")
   (lowerMint          "#5fb3a1")
   (blueishGreen       "#42675A")
   (lowerBlue          "#89ddff")
   (lightBlue          "#ADD7FF")
   (desaturatedBlue    "#91B4D5")
   (bluishGrayBrighter "#7390AA")
   (hotred             "#d0679d")
   (pink               "#f087bd")
   (gray               "#a6accd")
   (darkerGray         "#767c9d")
   (bluishGray         "#506477")
   (focus              "#303340")
   (bg                 "#1b1e28")
   (offWhite           "#e4f0fb")
   (selection          "#717cb425")
   (white              "#ffffff")
   (black              "#000000")
   (transparent        "#00000000")z)


(custom-theme-set-faces
 'poimandres
 `(default ((,class (:foreground ,gray :background ,bg))))
 `(bold ((,class (:weight bold))))
 `(bold-italic ((,class (:slant italic :weight bold))))
 `(underline ((,class (:underline t))))
 `(italic ((,class (:slant italic))))
 `(font-lock-builtin-face ((,class (:foreground ,brightYellow))))
 `(font-lock-comment-delimiter-face ((,class (:foreground ,darkerGray))))
 `(font-lock-comment-face ((,class (:foreground ,darkerGray))))
 `(font-lock-constant-face ((,class (:foreground ,lightBlue))))
 `(font-lock-doc-face ((,class (:foreground ,gray))))
 `(font-lock-doc-string-face ((,class (:foreground ,brightYellow))))
 `(font-lock-function-name-face ((,class (:foreground ,brightYellow))))
 `(font-lock-keyword-face ((,class (:foreground ,lightBlue))))
 `(font-lock-negation-char-face ((,class (:foreground ,desaturatedBlue))))
 `(font-lock-preprocessor-face ((,class (:foreground ,brightYellow))))
 `(font-lock-regexp-grouping-backslash ((,class (:foreground ,brightYellow))))
 `(font-lock-regexp-grouping-construct ((,class (:foreground ,blueishGreen))))
 `(font-lock-string-face ((,class (:foreground ,lowerBlue))))
 `(font-lock-type-face ((,class (:foreground ,lightBlue))))
 `(font-lock-variable-name-face ((,class (:foreground ,brightYellow))))
 `(font-lock-warning-face ((,class (:weight bold :foreground ,hotred))))
 `(shadow ((,class (:foreground ,darkerGray))))
 `(success ((,class (:foreground ,brightMint))))
 `(error ((,class (:foreground ,pink))))
 `(warning ((,class (:foreground ,brightYellow))))
 
 ;; Mode line faces.
 `(mode-line ((,class :foreground ,gray :background ,bg)))
 `(mode-line-inactive ((,class :foreground ,darkerGray :background ,bg)))
 `(mode-line-buffer-id ((,class (:weight bold :foreground ,gray))))
 `(mode-line-emphasis ((,class (:weight bold :foreground ,gray))))
 `(mode-line-highlight ((,class (:foreground ,lightBlue))))

 ;; css-mode <built-in> / scss-mode
 `(css-property ((,class (:foreground ,brightMint))))
 `(css-selector ((,class (:weight bold :foreground ,lightBlue))))
 
 ;; emacs interface
 `(cursor ((,class (:foreground ,gray))))
 `(fringe ((,class (:background ,bg))))
 `(linum ((,class (:foreground ,gray :background ,bg))))
 `(linum-highlight-face ((,class (:foreground ,gray :background ,bg))))


 ;; doom-modeline
 `(doom-modeline-bar ((,class (:background ,bg))))
 `(doom-modeline-info ((,class (:inherit ,'mode-line-emphasis))))
 `(doom-modeline-urgent ((,class (:inherit ,'mode-line-emphasis))))
 `(doom-modeline-warning ((,class (:inherit ,'mode-line-emphasis))))
 `(doom-modeline-debug ((,class (:inherit ,'mode-line-emphasis))))
 `(doom-modeline-buffer-minor-mode ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-project-dir ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-project-parent-dir ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-persp-name ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-buffer-file ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-buffer-modified ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-lsp-success ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-buffer-path ((,class (:inherit ,'mode-line-emphasis :weight ,'bold))))
 `(doom-modeline-buffer-project-root ((,class (:inherit ,'mode-line-emphasis))))
))

(custom-theme-set-variables
  'poimandres
  '(linum-format " %3i "))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  ;; add theme folder to `custom-theme-load-path' when installing over MELPA
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'poimandres)

;;; poimandres-theme.el ends here
