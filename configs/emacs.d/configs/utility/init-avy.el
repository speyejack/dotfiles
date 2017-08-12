;;; init-avy.el --- Adds-links-to-page-for-jumping-like-vimium
;;; Commentary:

;;; Code:

(defun jag--set-avy-key-bindings ()
  "Set up keybindings for avy.")

(defun jag--setup-avy-config ()
  "Set up personal configuation for avy.")

(defun jag--load-avy-requires ()
  "Load required sub packages for avy."
  (require 'init-ace-link))

(use-package avy
  :ensure t
  :config
  (jag--load-avy-requires)
  (jag--set-avy-key-bindings)
  (jag--setup-avy-config))

(provide 'init-avy)
;;; init-avy.el ends here
