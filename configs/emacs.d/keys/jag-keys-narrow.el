;;; jag-keys-narrow.el --- Narrow key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The narrow key bindings used throughout Emacs

;;; Code:

;; Create the narrow and numbers leader definer
(general-create-definer jag--narrow-numbers-leader-def
  :which-key "narrow/numbers"
  :states '(normal visual)
  :prefix (concat jag-leader-key " n")
  :global-prefix (concat jag-emacs-leader-key " n"))


(jag--narrow-numbers-leader-def
 "r" 'narrow-to-region
 "p" 'narrow-to-page
 "f" 'narrow-to-defun
 "w" 'widen
 "+" 'evil-numbers/inc-at-pt
 "=" 'evil-numbers/inc-at-pt
 "-" 'evil-numbers/dec-at-pt)


(provide 'jag-keys-narrow)

;;; jag-keys-narrow.el ends here
