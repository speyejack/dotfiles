;;; init-adaptive-wrap.el --- Wraps-the-buffer-automatically-and-adapts-the-size-without-changing-buffer
;;; Commentary:

;;; Code:

(defun jag--set-adaptive-wrap-key-bindings ()
  "Set up keybindings for adaptive-wrap.")

(defun jag--setup-adaptive-wrap-config ()
  "Set up personal configuation for adaptive-wrap.")

(defun jag--load-adaptive-wrap-requires ()
  "Load required sub packages for adaptive-wrap.")

(use-package adaptive-wrap
  :ensure t
  :config
  (jag--load-adaptive-wrap-requires)
  (jag--set-adaptive-wrap-key-bindings)
  (jag--setup-adaptive-wrap-config))

(provide 'init-adaptive-wrap)
;;; init-adaptive-wrap.el ends here
