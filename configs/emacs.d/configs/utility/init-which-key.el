;;; init-which-key.el --- Tells-you-which-keys-combinations-can-follow-a-key-press
;;; Commentary:

;;; Code:

(defun jag--set-which-key-key-bindings ()
  "Set up keybindings for which-key.")

(defun jag--setup-which-key-config ()
  "Set up personal configuation for which-key."
  (which-key-mode))

(defun jag--load-which-key-requires ()
  "Load required sub packages for which-key.")

(use-package which-key
  :ensure t
  :config
  (jag--load-which-key-requires)
  (jag--set-which-key-key-bindings)
  (jag--setup-which-key-config))

(provide 'init-which-key)
;;; init-which-key.el ends here
