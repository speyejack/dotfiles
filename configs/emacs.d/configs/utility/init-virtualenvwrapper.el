;;; init-virtualenvwrapper.el --- Allows-for-Virtual-Environments-to-be-created-with-emacs
;;; Commentary:

;;; Code:

(defun jag--add-virtualenvwrapper-hooks ()
  "Add hooks to virtualenvwrapper."
  (jag--add-virtualenvwrapper-key-hooks)
  (jag--add-virtualenvwrapper-other-hooks))

(defun jag--add-virtualenvwrapper-key-hooks ()
  "Add key hooks to virtualenvwrapper.")

(defun jag--add-virtualenvwrapper-other-hooks ()
  "Add mode other to virtualenvwrapper.")

(defun jag--set-virtualenvwrapper-key-bindings ()
  "Set up keybindings for virtualenvwrapper.")

(defun jag--setup-virtualenvwrapper-config ()
  "Set up personal configuation for virtualenvwrapper.")

(defun jag--load-virtualenvwrapper-requires ()
  "Load required sub packages for virtualenvwrapper.")

(use-package virtualenvwrapper
  :init
  (jag--load-virtualenvwrapper-requires)
  (jag--add-virtualenvwrapper-hooks)
  :ensure t
  :config
  (jag--set-virtualenvwrapper-key-bindings)
  (jag--setup-virtualenvwrapper-config))

(provide 'init-virtualenvwrapper)
;;; init-virtualenvwrapper.el ends here