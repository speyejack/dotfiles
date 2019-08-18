;;; jag-keys-local.el --- Local key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The local key bindings used throughout Emacs

;;; Code:

;; Create the local leader definer
(general-create-definer jag--local-leader-def
  :global-prefix (concat jag-emacs-leader-key " m")
  :states '(normal visual)
  :prefix (concat jag-leader-key " m"))

(provide 'jag-keys-local)

;;; jag-keys-local.el ends here
