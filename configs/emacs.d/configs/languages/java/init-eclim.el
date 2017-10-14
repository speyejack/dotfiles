;;; init-eclim.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-eclim-hooks ()
  "Add hooks to eclim."
  (jag--add-eclim-key-hooks)
  (jag--add-eclim-other-hooks))

(defun jag--add-eclim-key-hooks ()
  "Add keyboard hooks to eclim.")

(defun jag--add-eclim-other-hooks ()
  "Add other hooks to eclim.")

(defun jag--set-eclim-key-bindings ()
  "Set up keybindings for eclim.")

(defun jag--setup-eclim-config ()
  "Set up personal configuation for eclim.")

(defun jag--load-eclim-requires ()
  "Load required sub packages for eclim.")

(use-package eclim
  :init
  (jag--load-eclim-requires)
  (jag--add-eclim-hooks)
  :ensure t
  :config
  (jag--set-eclim-key-bindings)
  (jag--setup-eclim-config))

(provide 'init-eclim)
;;; init-eclim.el ends here