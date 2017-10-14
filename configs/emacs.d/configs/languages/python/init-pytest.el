;;; init-pytest.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-pytest-hooks ()
  "Add hooks to pytest."
  (jag--add-pytest-key-hooks)
  (jag--add-pytest-other-hooks))

(defun jag--add-pytest-key-hooks ()
  "Add key hooks to pytest.")

(defun jag--add-pytest-other-hooks ()
  "Add mode other to pytest.")

(defun jag--set-pytest-key-bindings ()
  "Set up keybindings for pytest.")

(defun jag--setup-pytest-config ()
  "Set up personal configuation for pytest.")

(defun jag--load-pytest-requires ()
  "Load required sub packages for pytest.")

(use-package pytest
  :init
  (jag--load-pytest-requires)
  (jag--add-pytest-hooks)
  :ensure t
  :config
  (jag--set-pytest-key-bindings)
  (jag--setup-pytest-config))

(provide 'init-pytest)
;;; init-pytest.el ends here