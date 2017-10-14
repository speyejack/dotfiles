;;; init-link-hint.el --- Like-Ace-link-with-some-differences
;;; Commentary:

;;; Code:

(defun jag--add-link-hint-hooks ()
  "Add hooks to link-hint."
  (jag--add-link-hint-key-hooks)
  (jag--add-link-hint-other-hooks))

(defun jag--add-link-hint-key-hooks ()
  "Add key hooks to link-hint.")

(defun jag--add-link-hint-other-hooks ()
  "Add mode other to link-hint.")

(defun jag--set-link-hint-key-bindings ()
  "Set up keybindings for link-hint.")

(defun jag--setup-link-hint-config ()
  "Set up personal configuation for link-hint.")

(defun jag--load-link-hint-requires ()
  "Load required sub packages for link-hint.")

(use-package link-hint
  :init
  (jag--load-link-hint-requires)
  (jag--add-link-hint-hooks)
  :ensure t
  :config
  (jag--set-link-hint-key-bindings)
  (jag--setup-link-hint-config))

(provide 'init-link-hint)
;;; init-link-hint.el ends here