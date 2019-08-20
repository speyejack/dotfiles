;;; jag-keys-utility.el --- Utility key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The utility key bindings used throughout Emacs

;;; Code:

;; Create the utility leader definer
(general-create-definer jag--utility-leader-def
  :which-key "utility"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " U")
  :global-prefix (concat jag-emacs-leader-key " U"))


(jag--utility-leader-def
  "i" 'use-package-report)


(provide 'jag-keys-utility)

;;; jag-keys-utility.el ends here
