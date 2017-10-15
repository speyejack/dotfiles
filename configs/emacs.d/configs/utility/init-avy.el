;;; init-avy.el --- Adds-links-to-page-for-jumping-like-vimium
;;; Commentary:

;;; Code:

(defun jag--add-avy-hooks ()
  "Add hooks to avy."
  (jag--add-avy-key-hooks)
  (jag--add-avy-other-hooks))

(defun jag--add-avy-key-hooks ()
  "Add keyboard hooks to avy.")

(defun jag--add-avy-other-hooks ()
  "Add other hooks to avy.")

(defun jag--set-avy-key-bindings ()
  "Set up keybindings for avy.")

(defun jag--setup-avy-config ()
  "Set up personal configuation for avy.")

(defun jag--load-avy-requires ()
  "Load required sub packages for avy."
  (require 'init-ace-link))

(use-package avy
  :init
  (jag--load-avy-requires)
  (jag--add-avy-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-avy-key-bindings)
  (jag--setup-avy-config))

(provide 'init-avy)
;;; init-avy.el ends here
