;;; init-expand-region.el --- Keeps-expanding-region-systematically
;;; Commentary:

;;; Code:

(defun jag--add-expand-region-hooks ()
  "Add hooks to expand-region."
  (jag--add-expand-region-key-hooks)
  (jag--add-expand-region-other-hooks))

(defun jag--add-expand-region-key-hooks ()
  "Add keyboard hooks to expand-region.")

(defun jag--add-expand-region-other-hooks ()
  "Add other hooks to expand-region.")

(defun jag--set-expand-region-key-bindings ()
  "Set up keybindings for expand-region.")

(defun jag--setup-expand-region-config ()
  "Set up personal configuation for expand-region.")

(defun jag--load-expand-region-requires ()
  "Load required sub packages for expand-region.")

(use-package expand-region
  :init
  (jag--load-expand-region-requires)
  (jag--add-expand-region-hooks)
  :ensure t
  :config
  (jag--set-expand-region-key-bindings)
  (jag--setup-expand-region-config))

(provide 'init-expand-region)
;;; init-expand-region.el ends here