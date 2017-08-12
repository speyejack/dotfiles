;;; init-pyvenv.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-pyvenv-key-bindings ()
  "Set up keybindings for pyvenv.")

(defun jag--setup-pyvenv-config ()
  "Set up personal configuation for pyvenv.")

(defun jag--load-pyvenv-requires ()
  "Load required sub packages for pyvenv.")

(use-package pyvenv
  :ensure t
  :config
  (jag--load-pyvenv-requires)
  (jag--set-pyvenv-key-bindings)
  (jag--setup-pyvenv-config))

(provide 'init-pyvenv)
;;; init-pyvenv.el ends here
