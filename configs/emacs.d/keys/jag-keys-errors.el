;;; jag-keys-errors.el --- Errors key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The errors key bindings used throughout Emacs

;;; Code:

;; Create the errors leader definer
(general-create-definer jag--errors-leader-def
  :which-key "Errors leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " e")
  :global-prefix (concat jag-emacs-leader-key " e"))


(provide 'jag-keys-errors)

;;; jag-keys-errors.el ends here
