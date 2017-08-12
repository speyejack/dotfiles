;;; init-auto-highlight-symbol.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-auto-highlight-symbol-key-bindings ()
  "Set up keybindings for auto-highlight-symbol.")

(defun jag--setup-auto-highlight-symbol-config ()
  "Set up personal configuation for auto-highlight-symbol.")

(defun jag--load-auto-highlight-symbol-requires ()
  "Load required sub packages for auto-highlight-symbol.")

(use-package auto-highlight-symbol
  :ensure t
  :config
  (jag--load-auto-highlight-symbol-requires)
  (jag--set-auto-highlight-symbol-key-bindings)
  (jag--setup-auto-highlight-symbol-config))

(provide 'init-auto-highlight-symbol)
;;; init-auto-highlight-symbol.el ends here
