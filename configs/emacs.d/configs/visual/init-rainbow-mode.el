;;; init-rainbow-mode.el --- Colorize-color-names
;;; Commentary:

;;; Code:

(defun jag--set-rainbow-mode-key-bindings ()
  "Set up keybindings for rainbow-mode.")

(defun jag--setup-rainbow-mode-config ()
  "Set up personal configuation for rainbow-mode."
  (add-hook 'prog-mode-hook 'rainbow-mode))

(defun jag--load-rainbow-mode-requires ()
  "Load required sub packages for rainbow-mode.")

(use-package rainbow-mode
  :ensure t
  :config
  (jag--load-rainbow-mode-requires)
  (jag--set-rainbow-mode-key-bindings)
  (jag--setup-rainbow-mode-config))

(provide 'init-rainbow-mode)
;;; init-rainbow-mode.el ends here
