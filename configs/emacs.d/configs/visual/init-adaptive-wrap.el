;;; init-adaptive-wrap.el --- Wraps-the-buffer-automatically-and-adapts-the-size-without-changing-buffer
;;; Commentary:

;;; Code:

(defun jag--add-adaptive-wrap-hooks ()
  "Add hooks to adaptive-wrap."
  (jag--add-adaptive-wrap-key-hooks)
  (jag--add-adaptive-wrap-other-hooks))

(defun jag--add-adaptive-wrap-key-hooks ()
  "Add keyboard hooks to adaptive-wrap.")

(defun jag--add-adaptive-wrap-other-hooks ()
  "Add other hooks to adaptive-wrap.")

(defun jag--set-adaptive-wrap-key-bindings ()
  "Set up keybindings for adaptive-wrap.")

(defun jag--setup-adaptive-wrap-config ()
  "Set up personal configuation for adaptive-wrap."
  (add-hook 'prog-mode-hook 'adaptive-wrap-prefix-mode))

(defun jag--load-adaptive-wrap-requires ()
  "Load required sub packages for adaptive-wrap.")

(use-package adaptive-wrap
  :init
  (jag--load-adaptive-wrap-requires)
  (jag--add-adaptive-wrap-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-adaptive-wrap-key-bindings)
  (jag--setup-adaptive-wrap-config))

(provide 'init-adaptive-wrap)
;;; init-adaptive-wrap.el ends here
