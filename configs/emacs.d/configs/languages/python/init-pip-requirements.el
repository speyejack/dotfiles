;;; init-pip-requirements.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-pip-requirements-hooks ()
  "Add hooks to pip-requirements."
  (jag--add-pip-requirements-key-hooks)
  (jag--add-pip-requirements-other-hooks))

(defun jag--add-pip-requirements-key-hooks ()
  "Add keyboard hooks to pip-requirements.")

(defun jag--add-pip-requirements-other-hooks ()
  "Add other hooks to pip-requirements.")

(defun jag--set-pip-requirements-key-bindings ()
  "Set up keybindings for pip-requirements.")

(defun jag--setup-pip-requirements-config ()
  "Set up personal configuation for pip-requirements.")

(defun jag--load-pip-requirements-requires ()
  "Load required sub packages for pip-requirements.")

(use-package pip-requirements
  :init
  (jag--load-pip-requirements-requires)
  (jag--add-pip-requirements-hooks)
  :ensure t
  :config
  (jag--set-pip-requirements-key-bindings)
  (jag--setup-pip-requirements-config))

(provide 'init-pip-requirements)
;;; init-pip-requirements.el ends here