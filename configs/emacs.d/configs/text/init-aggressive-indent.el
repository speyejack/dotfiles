;;; init-aggressive-indent.el --- Indents-code-while-typing
;;; Commentary:

;;; Code:

(defun jag--add-aggressive-indent-hooks ()
  "Add hooks to aggressive-indent."
  (jag--add-aggressive-indent-key-hooks)
  (jag--add-aggressive-indent-other-hooks))

(defun jag--add-aggressive-indent-key-hooks ()
  "Add keyboard hooks to aggressive-indent.")

(defun jag--add-aggressive-indent-other-hooks ()
  "Add other hooks to aggressive-indent.")

(defun jag--set-aggressive-indent-key-bindings ()
  "Set up keybindings for aggressive-indent.")

(defun jag--setup-aggressive-indent-config ()
  "Set up personal configuation for aggressive-indent."
  (aggressive-indent-global-mode 1))

(defun jag--load-aggressive-indent-requires ()
  "Load required sub packages for aggressive-indent.")

(use-package aggressive-indent
  :init
  (jag--load-aggressive-indent-requires)
  (jag--add-aggressive-indent-hooks)
  :ensure t
  :config
  (jag--set-aggressive-indent-key-bindings)
  (jag--setup-aggressive-indent-config))

(provide 'init-aggressive-indent)
;;; init-aggressive-indent.el ends here