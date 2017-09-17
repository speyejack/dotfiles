;;; init-aggressive-indent.el --- Indents-code-while-typing
;;; Commentary:

;;; Code:

(defun jag--set-aggressive-indent-key-bindings ()
  "Set up keybindings for aggressive-indent.")

(defun jag--setup-aggressive-indent-config ()
  "Set up personal configuation for aggressive-indent."
  (aggressive-indent-global-mode 1))

(defun jag--load-aggressive-indent-requires ()
  "Load required sub packages for aggressive-indent.")

(use-package aggressive-indent
  :ensure t
  :config
  (jag--load-aggressive-indent-requires)
  (jag--set-aggressive-indent-key-bindings)
  (jag--setup-aggressive-indent-config))

(provide 'init-aggressive-indent)
;;; init-aggressive-indent.el ends here
