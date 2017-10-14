;;; init-pyvenv.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-pyvenv-hooks ()
  "Add hooks to pyvenv."
  (jag--add-pyvenv-key-hooks)
  (jag--add-pyvenv-other-hooks))

(defun jag--add-pyvenv-key-hooks ()
  "Add key hooks to pyvenv.")

(defun jag--add-pyvenv-other-hooks ()
  "Add mode other to pyvenv.")

(defun jag--set-pyvenv-key-bindings ()
  "Set up keybindings for pyvenv.")

(defun jag--setup-pyvenv-config ()
  "Set up personal configuation for pyvenv."
  (pyvenv-mode 1))

(defun jag--load-pyvenv-requires ()
  "Load required sub packages for pyvenv.")

(use-package pyvenv
  :init
  (jag--load-pyvenv-requires)
  (jag--add-pyvenv-hooks)
  :ensure t
  :config
  (jag--set-pyvenv-key-bindings)
  (jag--setup-pyvenv-config))

(provide 'init-pyvenv)
;;; init-pyvenv.el ends here