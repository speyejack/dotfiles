;;; init-floobits.el --- Paired-Programming-like-google-docs
;;; Commentary:

;;; Code:

(defun jag--add-floobits-hooks ()
  "Add hooks to floobits."
  (jag--add-floobits-key-hooks)
  (jag--add-floobits-other-hooks))

(defun jag--add-floobits-key-hooks ()
  "Add key hooks to floobits.")

(defun jag--add-floobits-other-hooks ()
  "Add mode other to floobits.")

(defun jag--set-floobits-key-bindings ()
  "Set up keybindings for floobits.")

(defun jag--setup-floobits-config ()
  "Set up personal configuation for floobits.")

(defun jag--load-floobits-requires ()
  "Load required sub packages for floobits.")

(use-package floobits
  :init
  (jag--load-floobits-requires)
  (jag--add-floobits-hooks)
  :ensure t
  :config
  (jag--set-floobits-key-bindings)
  (jag--setup-floobits-config))

(provide 'init-floobits)
;;; init-floobits.el ends here