;;; init-helm-gtags.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-gtags-key-bindings ()
  "Set up keybindings for helm-gtags.")

(defun jag--setup-helm-gtags-config ()
  "Set up personal configuation for helm-gtags.")

(defun jag--load-helm-gtags-requires ()
  "Load required sub packages for helm-gtags.")

(use-package helm-gtags
  :ensure t
  :config
  (jag--load-helm-gtags-requires)
  (jag--set-helm-gtags-key-bindings)
  (jag--setup-helm-gtags-config))

(provide 'init-helm-gtags)
;;; init-helm-gtags.el ends here
