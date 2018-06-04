;;; init-helm-flx.el --- Better-Fuzzy-sorting-based-on-flx
;;; Commentary:

;;; Code:

(defun jag--add-helm-flx-hooks ()
  "Add hooks to helm-flx."
  (jag--add-helm-flx-key-hooks)
  (jag--add-helm-flx-other-hooks))

(defun jag--add-helm-flx-key-hooks ()
  "Add keyboard hooks to helm-flx.")

(defun jag--add-helm-flx-other-hooks ()
  "Add other hooks to helm-flx.")

(defun jag--set-helm-flx-key-bindings ()
  "Set up keybindings for helm-flx.")

(defun jag--setup-helm-flx-config ()
  "Set up personal configuation for helm-flx."
  (helm-flx-mode 1)
  (setq helm-flx-for-helm-find-files t
		helm-flx-for-helm-locate t))

(defun jag--load-helm-flx-requires ()
  "Load required sub packages for helm-flx.")

(use-package helm-flx
  :init
  (jag--load-helm-flx-requires)
  (jag--add-helm-flx-hooks)
  :ensure t
  :after helm
  :config
  (jag--set-helm-flx-key-bindings)
  (jag--setup-helm-flx-config))

(provide 'init-helm-flx)
;;; init-helm-flx.el ends here
