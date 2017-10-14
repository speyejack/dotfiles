;;; init-helm-hoogle.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-hoogle-hooks ()
  "Add hooks to helm-hoogle."
  (jag--add-helm-hoogle-key-hooks)
  (jag--add-helm-hoogle-other-hooks))

(defun jag--add-helm-hoogle-key-hooks ()
  "Add key hooks to helm-hoogle.")

(defun jag--add-helm-hoogle-other-hooks ()
  "Add mode other to helm-hoogle.")

(defun jag--set-helm-hoogle-key-bindings ()
  "Set up keybindings for helm-hoogle.")

(defun jag--setup-helm-hoogle-config ()
  "Set up personal configuation for helm-hoogle.")

(defun jag--load-helm-hoogle-requires ()
  "Load required sub packages for helm-hoogle.")

(use-package helm-hoogle
  :init
  (jag--load-helm-hoogle-requires)
  (jag--add-helm-hoogle-hooks)
  :ensure t
  :config
  (jag--set-helm-hoogle-key-bindings)
  (jag--setup-helm-hoogle-config))

(provide 'init-helm-hoogle)
;;; init-helm-hoogle.el ends here