;;; init-highlight-symbol.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-highlight-symbol-hooks ()
  "Add hooks to highlight-symbol."
  (jag--add-highlight-symbol-key-hooks)
  (jag--add-highlight-symbol-other-hooks))

(defun jag--add-highlight-symbol-key-hooks ()
  "Add key hooks to highlight-symbol.")

(defun jag--add-highlight-symbol-other-hooks ()
  "Add mode other to highlight-symbol.")

(defun jag--set-highlight-symbol-key-bindings ()
  "Set up keybindings for highlight-symbol.")

(defun jag--setup-highlight-symbol-config ()
  "Set up personal configuation for highlight-symbol."
  (global-auto-highlight-symbol-mode 1))

(defun jag--load-highlight-symbol-requires ()
  "Load required sub packages for highlight-symbol.")

(use-package highlight-symbol
  :init
  (jag--load-highlight-symbol-requires)
  (jag--add-highlight-symbol-hooks)
  :ensure t
  :config
  (jag--set-highlight-symbol-key-bindings)
  (jag--setup-highlight-symbol-config))

(provide 'init-highlight-symbol)
;;; init-highlight-symbol.el ends here