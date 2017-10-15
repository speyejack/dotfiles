;;; init-which-key.el --- Tells-you-which-keys-combinations-can-follow-a-key-press
;;; Commentary:

;;; Code:

(defun jag--add-which-key-hooks ()
  "Add hooks to which-key."
  (jag--add-which-key-key-hooks)
  (jag--add-which-key-other-hooks))

(defun jag--add-which-key-key-hooks ()
  "Add keyboard hooks to which-key.")

(defun jag--add-which-key-other-hooks ()
  "Add other hooks to which-key.")

(defun jag--set-which-key-key-bindings ()
  "Set up keybindings for which-key.")

(defun jag--setup-which-key-config ()
  "Set up personal configuation for which-key."
  (which-key-mode))

(defun jag--load-which-key-requires ()
  "Load required sub packages for which-key.")

(use-package which-key
  :init
  (jag--load-which-key-requires)
  (jag--add-which-key-hooks)
  :ensure t
  :defer t
  :diminish 'which-key-mode
  :config
  (jag--set-which-key-key-bindings)
  (jag--setup-which-key-config))

(provide 'init-which-key)
;;; init-which-key.el ends here
