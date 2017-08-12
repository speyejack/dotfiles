;;; init-yapfify.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-yapfify-key-bindings ()
  "Set up keybindings for yapfify.")

(defun jag--setup-yapfify-config ()
  "Set up personal configuation for yapfify.")

(defun jag--load-yapfify-requires ()
  "Load required sub packages for yapfify.")

(use-package yapfify
  :ensure t
  :config
  (jag--load-yapfify-requires)
  (jag--set-yapfify-key-bindings)
  (jag--setup-yapfify-config))

(provide 'init-yapfify)
;;; init-yapfify.el ends here
