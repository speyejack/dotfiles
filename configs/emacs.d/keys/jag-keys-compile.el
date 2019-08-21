;;; jag-keys-compile.el --- Compile key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The compile key bindings used throughout Emacs

;;; Code:

;; Create the compile leader definer
(general-create-definer jag--compile-leader-def
  :which-key "Compile leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " c")
  :global-prefix (concat jag-emacs-leader-key " c"))

(jag--compile-leader-def
 "m" 'helm-make)

(provide 'jag-keys-compile)

;;; jag-keys-compile.el ends here
