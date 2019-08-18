;;; jag-keys-registers.el --- Registers key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The registers key bindings used throughout Emacs

;;; Code:

;; Create the registers leader definer
(general-create-definer jag--registers-leader-def
  :which-key "Registers leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " b")
  :global-prefix (concat jag-emacs-leader-key " b"))


(jag--registers-leader-def
 "r" 'helm-register
 "p" 'helm-show-kill-ring)


(provide 'jag-keys-registers)

;;; jag-keys-registers.el ends here