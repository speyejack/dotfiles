;;; jag-keys-narrow.el --- Narrow key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The narrow key bindings used throughout Emacs

;;; Code:

;; Create the narrow and numbers leader definer
(general-create-definer jag--narrow-numbers-leader-def
  :which-key "narrow/numbers"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " n")
  :global-prefix (concat jag-emacs-leader-key " n"))

(use-package jag-funcs-narrow
  :ensure nil
  :general
  (jag--narrow-numbers-leader-def
	"r" 'narrow-to-region
	"p" 'narrow-to-page
	"f" 'narrow-to-defun
	"w" 'widen
	"o" 'jag-open-fold
	"O" 'jag-open-folds
	"c" 'jag-close-fold
	"C" 'jag-close-folds
	"t" 'jag-toggle-fold
	"i" 'jag-open-fold-recursively
	"I" 'origami-reset
	"+" 'evil-numbers/inc-at-pt
	"=" 'evil-numbers/inc-at-pt
	"-" 'evil-numbers/dec-at-pt))


(provide 'jag-keys-narrow)

;;; jag-keys-narrow.el ends here
