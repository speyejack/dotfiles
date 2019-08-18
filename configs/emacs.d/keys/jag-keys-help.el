;;; jag-keys-help.el --- Help key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The help key bindings used throughout Emacs

;;; Code:

;; Create the help leader definer
(general-create-definer jag--help-leader-def
  :which-key "help"
  :states '(normal visual)
  :prefix (concat jag-leader-key " h")
  :global-prefix (concat jag-emacs-leader-key " h"))


(use-package jag-funcs-help
  :ensure nil
  :general
  (jag--help-leader-def
   "d" '(nil :wk "describe")
   "db" 'describe-bindings
   "dc" 'describe-char
   "df" 'describe-function
   "dk" 'describe-key
   "dl" 'jag-describe-last-keys
   "dp" 'describe-package
   "ds" 'jag-describe-system-info
   "dt" 'describe-theme
   "dv" 'describe-variable
   "N"  'view-emacs-news))


(provide 'jag-keys-help)

;;; jag-keys-help.el ends here
