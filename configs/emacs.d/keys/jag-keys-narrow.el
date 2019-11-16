;;; jag-keys-narrow.el --- Narrow key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The narrow key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "n" "narrow")

(use-package jag-funcs-narrow
  :ensure nil
  :bind
  (:map jag-narrow-map
	("r" . 'narrow-to-region)
	("p" . 'narrow-to-page)
	("f" . 'narrow-to-defun)
	("w" . 'widen)
	("o" . 'jag-open-fold)
	("O" . 'jag-open-folds)
	("c" . 'jag-close-fold)
	("C" . 'jag-close-folds)
	("t" . 'jag-toggle-fold)
	("i" . 'jag-open-fold-recursively)
	("I" . 'origami-reset)
	("+" . 'evil-numbers/inc-at-pt)
	("=" . 'evil-numbers/inc-at-pt)
	("-" . 'evil-numbers/dec-at-pt)))


(provide 'jag-keys-narrow)

;;; jag-keys-narrow.el ends here
