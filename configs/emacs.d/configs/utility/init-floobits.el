;;; init-floobits.el --- Paired-Programming-like-google-docs
;;; Commentary:

;;; Code:

(defun jag--set-floobits-key-bindings ()
  "Set up keybindings for floobits.")

(defun jag--setup-floobits-config ()
  "Set up personal configuation for floobits.")

(defun jag--load-floobits-requires ()
  "Load required sub packages for floobits.")

(use-package floobits
  :ensure t
  :config
  (jag--load-floobits-requires)
  (jag--set-floobits-key-bindings)
  (jag--setup-floobits-config))

(provide 'init-floobits)
;;; init-floobits.el ends here
