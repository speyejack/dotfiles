;;; init-semantic.el --- Allows-for-language-aware-editing
;;; Commentary:

;;; Code:

(defun jag--set-semantic-key-bindings ()
  "Set up keybindings for semantic.")

(defun jag--setup-semantic-config ()
  "Set up personal configuation for semantic.")

(defun jag--load-semantic-requires ()
  "Load required sub packages for semantic.")

(use-package semantic
  :ensure t
  :config
  (jag--load-semantic-requires)
  (jag--set-semantic-key-bindings)
  (jag--setup-semantic-config))

(provide 'init-semantic)
;;; init-semantic.el ends here
