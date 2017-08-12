;;; init-highlight-parentheses.el --- Highlights-parentheses-encasing-cursor
;;; Commentary:

;;; Code:

(defun jag--set-highlight-parentheses-key-bindings ()
  "Set up keybindings for highlight-parentheses.")

(defun jag--setup-highlight-parentheses-config ()
  "Set up personal configuation for highlight-parentheses.")

(defun jag--load-highlight-parentheses-requires ()
  "Load required sub packages for highlight-parentheses.")

(use-package highlight-parentheses
  :ensure t
  :config
  (jag--load-highlight-parentheses-requires)
  (jag--set-highlight-parentheses-key-bindings)
  (jag--setup-highlight-parentheses-config))

(provide 'init-highlight-parentheses)
;;; init-highlight-parentheses.el ends here
