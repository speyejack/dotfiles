;;; init-fuzzy.el --- Fuzzy-matching, not-sure-if-helm-already-uses-it
;;; Commentary:

;;; Code:

(defun jag--set-fuzzy-key-bindings ()
  "Set up keybindings for fuzzy.")

(defun jag--setup-fuzzy-config ()
  "Set up personal configuation for fuzzy.")

(defun jag--load-fuzzy-requires ()
  "Load required sub packages for fuzzy.")

(use-package fuzzy
  :ensure t
  :config
  (jag--load-fuzzy-requires)
  (jag--set-fuzzy-key-bindings)
  (jag--setup-fuzzy-config))

(provide 'init-fuzzy)
;;; init-fuzzy.el ends here
