;;; init-flycheck.el --- Adds-syntax-checking-for-most-languages
;;; Commentary:

;;; Code:

(defun jag--set-flycheck-key-bindings ()
  "Set up keybindings for flycheck.")

(defun jag--setup-flycheck-config ()
  "Set up personal configuation for flycheck.")

(defun jag--load-flycheck-requires ()
  "Load required sub packages for flycheck."
  (require 'init-flycheck-pos-tip))

(use-package flycheck
  :ensure t
  :config
  (jag--load-flycheck-requires)
  (jag--set-flycheck-key-bindings)
  (jag--setup-flycheck-config))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
