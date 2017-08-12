;;; init-eclim.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-eclim-key-bindings ()
  "Set up keybindings for eclim.")

(defun jag--setup-eclim-config ()
  "Set up personal configuation for eclim.")

(defun jag--load-eclim-requires ()
  "Load required sub packages for eclim.")

(use-package eclim
  :ensure t
  :config
  (jag--load-eclim-requires)
  (jag--set-eclim-key-bindings)
  (jag--setup-eclim-config))

(provide 'init-eclim)
;;; init-eclim.el ends here
