;;; init-helm-c-yasnippet.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-c-yasnippet-key-bindings ()
  "Set up keybindings for helm-c-yasnippet.")

(defun jag--setup-helm-c-yasnippet-config ()
  "Set up personal configuation for helm-c-yasnippet.")

(defun jag--load-helm-c-yasnippet-requires ()
  "Load required sub packages for helm-c-yasnippet.")

(use-package helm-c-yasnippet
  :ensure t
  :config
  (jag--load-helm-c-yasnippet-requires)
  (jag--set-helm-c-yasnippet-key-bindings)
  (jag--setup-helm-c-yasnippet-config))

(provide 'init-helm-c-yasnippet)
;;; init-helm-c-yasnippet.el ends here
