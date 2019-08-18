;;; jag-keys-jump.el --- Jump key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The jump key bindings used throughout Emacs

;;; Code:

;; Create the jump leader definer
(general-create-definer jag--jump-leader-def
  :which-key "jump"
  :states '(normal visual)
  :prefix (concat jag-leader-key " j")
  :global-prefix (concat jag-emacs-leader-key " j"))


(jag--jump-leader-def
 "i" 'helm-imenu
 "f" 'find-function
 "v" 'find-variable
 "b" 'evil-window-bottom
 "t" 'evil-window-top)


(provide 'jag-keys-jump)

;;; jag-keys-jump.el ends here
