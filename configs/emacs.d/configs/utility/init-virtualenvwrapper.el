;;; init-virtualenvwrapper.el --- Allows-for-Virtual-Environments-to-be-created-with-emacs
;;; Commentary:

;;; Code:

(defun jag--set-virtualenvwrapper-key-bindings ()
  "Set up keybindings for virtualenvwrapper.")

(defun jag--setup-virtualenvwrapper-config ()
  "Set up personal configuation for virtualenvwrapper.")

(defun jag--load-virtualenvwrapper-requires ()
  "Load required sub packages for virtualenvwrapper.")

(use-package virtualenvwrapper
  :ensure t
  :config
  (jag--load-virtualenvwrapper-requires)
  (jag--set-virtualenvwrapper-key-bindings)
  (jag--setup-virtualenvwrapper-config))

(provide 'init-virtualenvwrapper)
;;; init-virtualenvwrapper.el ends here
