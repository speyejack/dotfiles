;;; init-highlight-symbol.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-highlight-symbol-key-bindings ()
  "Set up keybindings for highlight-symbol.")

(defun jag--setup-highlight-symbol-config ()
  "Set up personal configuation for highlight-symbol."
  (global-auto-highlight-symbol-mode 1))

(defun jag--load-highlight-symbol-requires ()
  "Load required sub packages for highlight-symbol.")

(use-package highlight-symbol
  :ensure t
  :config
  (jag--load-highlight-symbol-requires)
  (jag--set-highlight-symbol-key-bindings)
  (jag--setup-highlight-symbol-config))

(provide 'init-highlight-symbol)
;;; init-highlight-symbol.el ends here
