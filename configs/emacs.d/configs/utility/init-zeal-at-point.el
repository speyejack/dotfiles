;;; init-zeal-at-point.el --- Offline-documentation-for-languages
;;; Commentary:

;;; Code:

(defun jag--set-zeal-at-point-key-bindings ()
  "Set up keybindings for zeal-at-point.")

(defun jag--setup-zeal-at-point-config ()
  "Set up personal configuation for zeal-at-point.")

(defun jag--load-zeal-at-point-requires ()
  "Load required sub packages for zeal-at-point.")

(use-package zeal-at-point
  :ensure t
  :config
  (jag--load-zeal-at-point-requires)
  (jag--set-zeal-at-point-key-bindings)
  (jag--setup-zeal-at-point-config))

(provide 'init-zeal-at-point)
;;; init-zeal-at-point.el ends here
