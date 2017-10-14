;;; init-zeal-at-point.el --- Offline-documentation-for-languages
;;; Commentary:

;;; Code:

(defun jag--add-zeal-at-point-hooks ()
  "Add hooks to zeal-at-point."
  (jag--add-zeal-at-point-key-hooks)
  (jag--add-zeal-at-point-other-hooks))

(defun jag--add-zeal-at-point-key-hooks ()
  "Add key hooks to zeal-at-point.")

(defun jag--add-zeal-at-point-other-hooks ()
  "Add mode other to zeal-at-point.")

(defun jag--set-zeal-at-point-key-bindings ()
  "Set up keybindings for zeal-at-point.")

(defun jag--setup-zeal-at-point-config ()
  "Set up personal configuation for zeal-at-point.")

(defun jag--load-zeal-at-point-requires ()
  "Load required sub packages for zeal-at-point.")

(use-package zeal-at-point
  :init
  (jag--load-zeal-at-point-requires)
  (jag--add-zeal-at-point-hooks)
  :ensure t
  :config
  (jag--set-zeal-at-point-key-bindings)
  (jag--setup-zeal-at-point-config))

(provide 'init-zeal-at-point)
;;; init-zeal-at-point.el ends here