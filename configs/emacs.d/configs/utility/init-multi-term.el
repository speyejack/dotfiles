;;; init-multi-term.el --- Allows-for-multiple-terminal-buffers
;;; Commentary:

;;; Code:

(defun jag--set-multi-term-key-bindings ()
  "Set up keybindings for multi-term.")

(defun jag--setup-multi-term-config ()
  "Set up personal configuation for multi-term.")

(defun jag--load-multi-term-requires ()
  "Load required sub packages for multi-term.")

(use-package multi-term
  :ensure t
  :config
  (jag--load-multi-term-requires)
  (jag--set-multi-term-key-bindings)
  (jag--setup-multi-term-config))

(provide 'init-multi-term)
;;; init-multi-term.el ends here
