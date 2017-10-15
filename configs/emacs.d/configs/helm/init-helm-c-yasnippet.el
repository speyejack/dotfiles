;;; init-helm-c-yasnippet.el --- Use yasnippet with helm
;;; Commentary:

;;; Code:

(defun jag--add-helm-c-yasnippet-hooks ()
  "Add hooks to helm-c-yasnippet."
  (jag--add-helm-c-yasnippet-key-hooks)
  (jag--add-helm-c-yasnippet-other-hooks))

(defun jag--add-helm-c-yasnippet-key-hooks ()
  "Add keyboard hooks to helm-c-yasnippet.")

(defun jag--add-helm-c-yasnippet-other-hooks ()
  "Add other hooks to helm-c-yasnippet.")

(defun jag--set-helm-c-yasnippet-key-bindings ()
  "Set up keybindings for helm-c-yasnippet.")

(defun jag--setup-helm-c-yasnippet-config ()
  "Set up personal configuation for helm-c-yasnippet.")

(defun jag--load-helm-c-yasnippet-requires ()
  "Load required sub packages for helm-c-yasnippet.")

(use-package helm-c-yasnippet
  :init
  (jag--load-helm-c-yasnippet-requires)
  (jag--add-helm-c-yasnippet-hooks)
  :ensure t
  :commands 'helm-yas-complete
  :config
  (jag--set-helm-c-yasnippet-key-bindings)
  (jag--setup-helm-c-yasnippet-config))

(provide 'init-helm-c-yasnippet)
;;; init-helm-c-yasnippet.el ends here
