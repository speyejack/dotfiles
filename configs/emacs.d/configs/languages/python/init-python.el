;;; init-python.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-python-hooks ()
  "Add hooks to python."
  (jag--add-python-key-hooks)
  (jag--add-python-other-hooks))

(defun jag--add-python-key-hooks ()
  "Add keyboard hooks to python.")

(defun jag--add-python-other-hooks ()
  "Add other hooks to python.")

(defun jag--set-python-key-bindings ()
  "Set up keybindings for python.")

(defun jag--setup-python-config ()
  "Set up personal configuation for python.")

(defun jag--load-python-requires ()
  "Load required sub packages for python.")

(use-package python
  :init
  (jag--load-python-requires)
  (jag--add-python-hooks)
  :ensure t
  :config
  (jag--set-python-key-bindings)
  (jag--setup-python-config))

(provide 'init-python)
;;; init-python.el ends here