;;; init-semantic.el --- Allows-for-language-aware-editing
;;; Commentary:

;;; Code:

(defun jag--add-semantic-hooks ()
  "Add hooks to semantic."
  (jag--add-semantic-key-hooks)
  (jag--add-semantic-other-hooks))

(defun jag--add-semantic-key-hooks ()
  "Add keyboard hooks to semantic.")

(defun jag--add-semantic-other-hooks ()
  "Add other hooks to semantic.")

(defun jag--set-semantic-key-bindings ()
  "Set up keybindings for semantic.")

(defun jag--setup-semantic-config ()
  "Set up personal configuation for semantic."
  (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
  (semantic-mode 1))

(defun jag--load-semantic-requires ()
  "Load required sub packages for semantic.")

(use-package semantic
  :init
  (jag--load-semantic-requires)
  (jag--add-semantic-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-semantic-key-bindings)
  (jag--setup-semantic-config))

(provide 'init-semantic)
;;; init-semantic.el ends here
