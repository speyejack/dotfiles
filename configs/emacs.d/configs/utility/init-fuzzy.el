;;; init-fuzzy.el --- Fuzzy-matching, not-sure-if-helm-already-uses-it
;;; Commentary:

;;; Code:

(defun jag--add-fuzzy-hooks ()
  "Add hooks to fuzzy."
  (jag--add-fuzzy-key-hooks)
  (jag--add-fuzzy-other-hooks))

(defun jag--add-fuzzy-key-hooks ()
  "Add keyboard hooks to fuzzy.")

(defun jag--add-fuzzy-other-hooks ()
  "Add other hooks to fuzzy.")

(defun jag--set-fuzzy-key-bindings ()
  "Set up keybindings for fuzzy.")

(defun jag--setup-fuzzy-config ()
  "Set up personal configuation for fuzzy.")

(defun jag--load-fuzzy-requires ()
  "Load required sub packages for fuzzy.")

(use-package fuzzy
  :init
  (jag--load-fuzzy-requires)
  (jag--add-fuzzy-hooks)
  :ensure t
  :config
  (jag--set-fuzzy-key-bindings)
  (jag--setup-fuzzy-config))

(provide 'init-fuzzy)
;;; init-fuzzy.el ends here