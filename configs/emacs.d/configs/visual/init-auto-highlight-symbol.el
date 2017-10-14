;;; init-auto-highlight-symbol.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-auto-highlight-symbol-hooks ()
  "Add hooks to auto-highlight-symbol."
  (jag--add-auto-highlight-symbol-key-hooks)
  (jag--add-auto-highlight-symbol-other-hooks))

(defun jag--add-auto-highlight-symbol-key-hooks ()
  "Add key hooks to auto-highlight-symbol.")

(defun jag--add-auto-highlight-symbol-other-hooks ()
  "Add mode other to auto-highlight-symbol.")

(defun jag--set-auto-highlight-symbol-key-bindings ()
  "Set up keybindings for auto-highlight-symbol.")

(defun jag--setup-auto-highlight-symbol-config ()
  "Set up personal configuation for auto-highlight-symbol."
  (add-hook 'prog-mode-hook 'auto-highlight-symbol-mode))

  (defun jag--load-auto-highlight-symbol-requires ()
	"Load required sub packages for auto-highlight-symbol.")

(use-package auto-highlight-symbol
  :init
  (jag--load-auto-highlight-symbol-requires)
  (jag--add-auto-highlight-symbol-hooks)
  :ensure t
  :config
  (jag--set-auto-highlight-symbol-key-bindings)
  (jag--setup-auto-highlight-symbol-config))

(provide 'init-auto-highlight-symbol)
;;; init-auto-highlight-symbol.el ends here