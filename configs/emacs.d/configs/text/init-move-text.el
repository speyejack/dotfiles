;;; init-move-text.el --- Move-chunks-of-text-around-easily
;;; Commentary:

;;; Code:

(defun jag--set-move-text-key-bindings ()
  "Set up keybindings for move-text.")

(defun jag--setup-move-text-config ()
  "Set up personal configuation for move-text.")

(defun jag--load-move-text-requires ()
  "Load required sub packages for move-text.")

(use-package move-text
  :ensure t
  :config
  (jag--load-move-text-requires)
  (jag--set-move-text-key-bindings)
  (jag--setup-move-text-config))

(provide 'init-move-text)
;;; init-move-text.el ends here
