;;; jag-keys-narrow.el --- Narrow key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The narrow key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "n" "narrow")

(jag-declare-leader-prefixes
 '(("n" "narrow")))

(jag-define-keys jag-narrow-map
 "r" 'narrow-to-region
 "p" 'narrow-to-page
 "f" 'narrow-to-defun
 "w" 'widen
 "o" 'jag-open-fold-recursively
 "O" 'jag-open-folds
 "c" 'jag-close-fold
 "C" 'jag-close-folds
 "t" 'jag-toggle-fold
 "i" 'jag-open-fold
 "I" 'origami-reset
 "," 'commify-toggle
 "+" 'evil-numbers/inc-at-pt
 "=" 'evil-numbers/inc-at-pt
 "-" 'evil-numbers/dec-at-pt)

(use-package jag-funcs-narrow
  :commands
  (jag-open-fold
   jag-open-folds
   jag-close-fold
   jag-close-folds
   jag-toggle-fold
   jag-open-fold-recursively)
  :straight nil)


(provide 'jag-keys-narrow)

;;; jag-keys-narrow.el ends here
