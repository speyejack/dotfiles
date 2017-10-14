;;; init-helm-gtags.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-gtags-hooks ()
  "Add hooks to helm-gtags."
  (jag--add-helm-gtags-key-hooks)
  (jag--add-helm-gtags-other-hooks))

(defun jag--add-helm-gtags-key-hooks ()
  "Add keyboard hooks to helm-gtags.")

(defun jag--add-helm-gtags-other-hooks ()
  "Add other hooks to helm-gtags.")

(defun jag--set-helm-gtags-key-bindings ()
  "Set up keybindings for helm-gtags.")

(defun jag--setup-helm-gtags-config ()
  "Set up personal configuation for helm-gtags.")

(defun jag--load-helm-gtags-requires ()
  "Load required sub packages for helm-gtags.")

(use-package helm-gtags
  :init
  (jag--load-helm-gtags-requires)
  (jag--add-helm-gtags-hooks)
  :ensure t
  :config
  (jag--set-helm-gtags-key-bindings)
  (jag--setup-helm-gtags-config))

(provide 'init-helm-gtags)
;;; init-helm-gtags.el ends here