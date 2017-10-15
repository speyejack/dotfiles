;;; init-helm-make.el --- Use helm to interact with make files
;;; Commentary:

;;; Code:

(defun jag--add-helm-make-hooks ()
  "Add hooks to helm-make."
  (jag--add-helm-make-key-hooks)
  (jag--add-helm-make-other-hooks))

(defun jag--add-helm-make-key-hooks ()
  "Add keyboard hooks to helm-make.")

(defun jag--add-helm-make-other-hooks ()
  "Add other hooks to helm-make.")

(defun jag--set-helm-make-key-bindings ()
  "Set up keybindings for helm-make.")

(defun jag--setup-helm-make-config ()
  "Set up personal configuation for helm-make.")

(defun jag--load-helm-make-requires ()
  "Load required sub packages for helm-make.")

(use-package helm-make
  :init
  (jag--load-helm-make-requires)
  (jag--add-helm-make-hooks)
  :ensure t
  :commands 'helm-make
  :config
  (jag--set-helm-make-key-bindings)
  (jag--setup-helm-make-config))

(provide 'init-helm-make)
;;; init-helm-make.el ends here
