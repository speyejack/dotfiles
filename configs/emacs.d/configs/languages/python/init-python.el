;;; init-python.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-python-key-bindings ()
  "Set up keybindings for python.")

(defun jag--setup-python-config ()
  "Set up personal configuation for python.")

(defun jag--load-python-requires ()
  "Load required sub packages for python.")

(use-package python
  :ensure t
  :config
  (jag--load-python-requires)
  (jag--set-python-key-bindings)
  (jag--setup-python-config))

(provide 'init-python)
;;; init-python.el ends here
