;;; init-ace-link.el --- Uses-Avy-to-jump-to-links
;;; Commentary:

;;; Code:

(defun jag--set-ace-link-key-bindings ()
  "Set up keybindings for ace-link.")

(defun jag--setup-ace-link-config ()
  "Set up personal configuation for ace-link.")

(defun jag--load-ace-link-requires ()
  "Load required sub packages for ace-link."
  (require 'init-ace-jump-helm-line))

(use-package ace-link
  :ensure t
  :config
  (jag--load-ace-link-requires)
  (jag--set-ace-link-key-bindings)
  (jag--setup-ace-link-config))

(provide 'init-ace-link)
;;; init-ace-link.el ends here
