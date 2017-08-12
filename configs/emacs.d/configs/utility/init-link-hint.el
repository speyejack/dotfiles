;;; init-link-hint.el --- Like-Ace-link-with-some-differences
;;; Commentary:

;;; Code:

(defun jag--set-link-hint-key-bindings ()
  "Set up keybindings for link-hint.")

(defun jag--setup-link-hint-config ()
  "Set up personal configuation for link-hint.")

(defun jag--load-link-hint-requires ()
  "Load required sub packages for link-hint.")

(use-package link-hint
  :ensure t
  :config
  (jag--load-link-hint-requires)
  (jag--set-link-hint-key-bindings)
  (jag--setup-link-hint-config))

(provide 'init-link-hint)
;;; init-link-hint.el ends here
