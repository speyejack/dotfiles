;;; jag-keys-toggles.el --- Toggles key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The toggles key bindings used throughout Emacs

;;; Code:

;; Create the toggles leader definer
(general-create-definer jag--toggles-leader-def
  :which-key "Toggles leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " x")
  :global-prefix (concat jag-emacs-leader-key " x"))


(jag--toggles-leader-def
 )


(provide 'jag-keys-toggles)

;;; jag-keys-toggles.el ends here
