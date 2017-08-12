;;; init-expand-region.el --- Keeps-expanding-region-systematically
;;; Commentary:

;;; Code:

(defun jag--set-expand-region-key-bindings ()
  "Set up keybindings for expand-region.")

(defun jag--setup-expand-region-config ()
  "Set up personal configuation for expand-region.")

(defun jag--load-expand-region-requires ()
  "Load required sub packages for expand-region.")

(use-package expand-region
  :ensure t
  :config
  (jag--load-expand-region-requires)
  (jag--set-expand-region-key-bindings)
  (jag--setup-expand-region-config))

(provide 'init-expand-region)
;;; init-expand-region.el ends here
