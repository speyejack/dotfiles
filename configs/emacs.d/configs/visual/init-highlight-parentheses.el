;;; init-highlight-parentheses.el --- Highlights-parentheses-encasing-cursor
;;; Commentary:

;;; Code:

(defun jag--add-highlight-parentheses-hooks ()
  "Add hooks to highlight-parentheses."
  (jag--add-highlight-parentheses-key-hooks)
  (jag--add-highlight-parentheses-other-hooks))

(defun jag--add-highlight-parentheses-key-hooks ()
  "Add keyboard hooks to highlight-parentheses.")

(defun jag--add-highlight-parentheses-other-hooks ()
  "Add other hooks to highlight-parentheses.")

(defun jag--set-highlight-parentheses-key-bindings ()
  "Set up keybindings for highlight-parentheses.")

(defun jag--setup-highlight-parentheses-config ()
  "Set up personal configuation for highlight-parentheses."
  (global-highlight-parentheses-mode))

(defun jag--load-highlight-parentheses-requires ()
  "Load required sub packages for highlight-parentheses.")

(use-package highlight-parentheses
  :init
  (jag--load-highlight-parentheses-requires)
  (jag--add-highlight-parentheses-hooks)
  :ensure t
  :config
  (jag--set-highlight-parentheses-key-bindings)
  (jag--setup-highlight-parentheses-config))

(provide 'init-highlight-parentheses)
;;; init-highlight-parentheses.el ends here