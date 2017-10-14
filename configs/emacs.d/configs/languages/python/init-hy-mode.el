;;; init-hy-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-hy-mode-hooks ()
  "Add hooks to hy-mode."
  (jag--add-hy-mode-key-hooks)
  (jag--add-hy-mode-other-hooks))

(defun jag--add-hy-mode-key-hooks ()
  "Add key hooks to hy-mode.")

(defun jag--add-hy-mode-other-hooks ()
  "Add mode other to hy-mode.")

(defun jag--set-hy-mode-key-bindings ()
  "Set up keybindings for hy-mode.")

(defun jag--setup-hy-mode-config ()
  "Set up personal configuation for hy-mode.")

(defun jag--load-hy-mode-requires ()
  "Load required sub packages for hy-mode.")

(use-package hy-mode
  :init
  (jag--load-hy-mode-requires)
  (jag--add-hy-mode-hooks)
  :ensure t
  :config
  (jag--set-hy-mode-key-bindings)
  (jag--setup-hy-mode-config))

(provide 'init-hy-mode)
;;; init-hy-mode.el ends here