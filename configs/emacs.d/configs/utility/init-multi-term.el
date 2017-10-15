;;; init-multi-term.el --- Allows-for-multiple-terminal-buffers
;;; Commentary:

;;; Code:

(defun jag--add-multi-term-hooks ()
  "Add hooks to multi-term."
  (jag--add-multi-term-key-hooks)
  (jag--add-multi-term-other-hooks))

(defun jag--add-multi-term-key-hooks ()
  "Add keyboard hooks to multi-term.")

(defun jag--add-multi-term-other-hooks ()
  "Add other hooks to multi-term.")

(defun jag--set-multi-term-key-bindings ()
  "Set up keybindings for multi-term.")

(defun jag--setup-multi-term-config ()
  "Set up personal configuation for multi-term.")

(defun jag--load-multi-term-requires ()
  "Load required sub packages for multi-term.")

(use-package multi-term
  :init
  (jag--load-multi-term-requires)
  (jag--add-multi-term-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-multi-term-key-bindings)
  (jag--setup-multi-term-config))

(provide 'init-multi-term)
;;; init-multi-term.el ends here
