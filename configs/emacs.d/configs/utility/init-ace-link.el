;;; init-ace-link.el --- Uses-Avy-to-jump-to-links
;;; Commentary:

;;; Code:

(defun jag--add-ace-link-hooks ()
  "Add hooks to ace-link."
  (jag--add-ace-link-key-hooks)
  (jag--add-ace-link-other-hooks))

(defun jag--add-ace-link-key-hooks ()
  "Add key hooks to ace-link.")

(defun jag--add-ace-link-other-hooks ()
  "Add mode other to ace-link.")

(defun jag--set-ace-link-key-bindings ()
  "Set up keybindings for ace-link.")

(defun jag--setup-ace-link-config ()
  "Set up personal configuation for ace-link.")

(defun jag--load-ace-link-requires ()
  "Load required sub packages for ace-link."
  (require 'init-ace-jump-helm-line))

(use-package ace-link
  :init
  (jag--load-ace-link-requires)
  (jag--add-ace-link-hooks)
  :ensure t
  :config
  (jag--set-ace-link-key-bindings)
  (jag--setup-ace-link-config))

(provide 'init-ace-link)
;;; init-ace-link.el ends here