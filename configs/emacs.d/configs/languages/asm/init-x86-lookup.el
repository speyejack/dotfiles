;;; init-x86-lookup.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-x86-lookup-key-bindings ()
  "Set up keybindings for x86-lookup.")

(defun jag--setup-x86-lookup-config ()
  "Set up personal configuation for x86-lookup.")

(defun jag--load-x86-lookup-requires ()
  "Load required sub packages for x86-lookup.")

(use-package x86-lookup
  :ensure t
  :config
  (jag--load-x86-lookup-requires)
  (jag--set-x86-lookup-key-bindings)
  (jag--setup-x86-lookup-config))

(provide 'init-x86-lookup)
;;; init-x86-lookup.el ends here
