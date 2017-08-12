;;; init-pip-requirements.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-pip-requirements-key-bindings ()
  "Set up keybindings for pip-requirements.")

(defun jag--setup-pip-requirements-config ()
  "Set up personal configuation for pip-requirements.")

(defun jag--load-pip-requirements-requires ()
  "Load required sub packages for pip-requirements.")

(use-package pip-requirements
  :ensure t
  :config
  (jag--load-pip-requirements-requires)
  (jag--set-pip-requirements-key-bindings)
  (jag--setup-pip-requirements-config))

(provide 'init-pip-requirements)
;;; init-pip-requirements.el ends here
