;;; init-yapfify.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-yapfify-hooks ()
  "Add hooks to yapfify."
  (jag--add-yapfify-key-hooks)
  (jag--add-yapfify-other-hooks))

(defun jag--add-yapfify-key-hooks ()
  "Add key hooks to yapfify.")

(defun jag--add-yapfify-other-hooks ()
  "Add mode other to yapfify.")

(defun jag--set-yapfify-key-bindings ()
  "Set up keybindings for yapfify.")

(defun jag--setup-yapfify-config ()
  "Set up personal configuation for yapfify.")

(defun jag--load-yapfify-requires ()
  "Load required sub packages for yapfify.")

(use-package yapfify
  :init
  (jag--load-yapfify-requires)
  (jag--add-yapfify-hooks)
  :ensure t
  :config
  (jag--set-yapfify-key-bindings)
  (jag--setup-yapfify-config))

(provide 'init-yapfify)
;;; init-yapfify.el ends here