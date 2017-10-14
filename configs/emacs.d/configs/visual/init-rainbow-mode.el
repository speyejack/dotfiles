;;; init-rainbow-mode.el --- Colorize-color-names
;;; Commentary:

;;; Code:

(defun jag--add-rainbow-mode-hooks ()
  "Add hooks to rainbow-mode."
  (jag--add-rainbow-mode-key-hooks)
  (jag--add-rainbow-mode-other-hooks))

(defun jag--add-rainbow-mode-key-hooks ()
  "Add key hooks to rainbow-mode.")

(defun jag--add-rainbow-mode-other-hooks ()
  "Add mode other to rainbow-mode.")

(defun jag--set-rainbow-mode-key-bindings ()
  "Set up keybindings for rainbow-mode.")

(defun jag--setup-rainbow-mode-config ()
  "Set up personal configuation for rainbow-mode."
  (add-hook 'prog-mode-hook 'rainbow-mode))

(defun jag--load-rainbow-mode-requires ()
  "Load required sub packages for rainbow-mode.")

(use-package rainbow-mode
  :init
  (jag--load-rainbow-mode-requires)
  (jag--add-rainbow-mode-hooks)
  :ensure t
  :config
  (jag--set-rainbow-mode-key-bindings)
  (jag--setup-rainbow-mode-config))

(provide 'init-rainbow-mode)
;;; init-rainbow-mode.el ends here