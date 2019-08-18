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

(jag--errors-leader-def
 "t" 'hl-todo-next
 "T" 'hl-todo-prev)

(provide 'jag-keys-errors)

;;; jag-keys-errors.el ends here
