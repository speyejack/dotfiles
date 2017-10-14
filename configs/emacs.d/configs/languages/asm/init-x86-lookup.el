;;; init-x86-lookup.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-x86-lookup-hooks ()
  "Add hooks to x86-lookup."
  (jag--add-x86-lookup-key-hooks)
  (jag--add-x86-lookup-other-hooks))

(defun jag--add-x86-lookup-key-hooks ()
  "Add key hooks to x86-lookup.")

(defun jag--add-x86-lookup-other-hooks ()
  "Add mode other to x86-lookup.")

(defun jag--set-x86-lookup-key-bindings ()
  "Set up keybindings for x86-lookup.")

(defun jag--setup-x86-lookup-config ()
  "Set up personal configuation for x86-lookup.")

(defun jag--load-x86-lookup-requires ()
  "Load required sub packages for x86-lookup.")

(use-package x86-lookup
  :init
  (jag--load-x86-lookup-requires)
  (jag--add-x86-lookup-hooks)
  :ensure t
  :config
  (jag--set-x86-lookup-key-bindings)
  (jag--setup-x86-lookup-config))

(provide 'init-x86-lookup)
;;; init-x86-lookup.el ends here