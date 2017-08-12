;;; init-pytest.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-pytest-key-bindings ()
  "Set up keybindings for pytest.")

(defun jag--setup-pytest-config ()
  "Set up personal configuation for pytest.")

(defun jag--load-pytest-requires ()
  "Load required sub packages for pytest.")

(use-package pytest
  :ensure t
  :config
  (jag--load-pytest-requires)
  (jag--set-pytest-key-bindings)
  (jag--setup-pytest-config))

(provide 'init-pytest)
;;; init-pytest.el ends here
