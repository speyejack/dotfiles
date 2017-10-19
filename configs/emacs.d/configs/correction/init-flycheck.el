;;; init-flycheck.el --- Adds-syntax-checking-for-most-languages
;;; Commentary:

;;; Code:

(defun jag--add-flycheck-hooks ()
  "Add hooks to flycheck."
  (jag--add-flycheck-key-hooks)
  (jag--add-flycheck-other-hooks))

(defun jag--add-flycheck-key-hooks ()
  "Add keyboard hooks to flycheck.")

(defun jag--add-flycheck-other-hooks ()
  "Add other hooks to flycheck.")

(defun jag--set-flycheck-key-bindings ()
  "Set up keybindings for flycheck.")

(defun jag--setup-flycheck-config ()
  "Set up personal configuation for flycheck."
  (global-flycheck-mode 1))

(defun jag--load-flycheck-requires ()
  "Load required sub packages for flycheck."
  (require 'init-flycheck-pos-tip))

(use-package flycheck
  :init
  (jag--load-flycheck-requires)
  (jag--add-flycheck-hooks)
  :ensure t
  :defer 3
  :diminish 'flycheck-mode
  :config
  (jag--set-flycheck-key-bindings)
  (jag--setup-flycheck-config))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
