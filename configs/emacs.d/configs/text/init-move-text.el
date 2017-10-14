;;; init-move-text.el --- Move-chunks-of-text-around-easily
;;; Commentary:

;;; Code:

(defun jag--add-move-text-hooks ()
  "Add hooks to move-text."
  (jag--add-move-text-key-hooks)
  (jag--add-move-text-other-hooks))

(defun jag--add-move-text-key-hooks ()
  "Add keyboard hooks to move-text.")

(defun jag--add-move-text-other-hooks ()
  "Add other hooks to move-text.")

(defun jag--set-move-text-key-bindings ()
  "Set up keybindings for move-text.")

(defun jag--setup-move-text-config ()
  "Set up personal configuation for move-text.")

(defun jag--load-move-text-requires ()
  "Load required sub packages for move-text.")

(use-package move-text
  :init
  (jag--load-move-text-requires)
  (jag--add-move-text-hooks)
  :ensure t
  :config
  (jag--set-move-text-key-bindings)
  (jag--setup-move-text-config))

(provide 'init-move-text)
;;; init-move-text.el ends here