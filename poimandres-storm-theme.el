;;; poimandres-storm-theme.el --- Poimandres storm theme -*- lexical-binding: t; -*-

;; Author: kamm3r <https://github.com/kamm3r>
;; URL: https://github.com/kamm3r/poimandres.el
;; Version: 0.2.0
;; Package-Requires: ((emacs "25.1"))

;;; Commentary:
;; Emacs port of the storm variant of the Poimandres VS Code theme
;; (https://github.com/drcmda/poimandres-theme).  Mint marks strings,
;; constants, and builtins; blue marks names; pink marks errors; and
;; pale yellow marks warnings.

;;; Code:

(deftheme poimandres-storm "Poimandres storm theme.")

(eval-and-compile
  (let ((load-path
         (cons (file-name-directory
                (or load-file-name
                    (bound-and-true-p byte-compile-current-file)
                    buffer-file-name))
               load-path)))
    (require 'poimandres-common)))

(poimandres-theme-set-faces 'poimandres-storm)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'poimandres-storm)

;;; poimandres-storm-theme.el ends here
