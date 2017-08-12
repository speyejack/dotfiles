;;; init-py-isort.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-py-isort-key-bindings ()
  "Set up keybindings for py-isort.")

(defun jag--setup-py-isort-config ()
  "Set up personal configuation for py-isort.")

(defun jag--load-py-isort-requires ()
  "Load required sub packages for py-isort.")

(use-package py-isort
  :ensure t
  :config
  (jag--load-py-isort-requires)
  (jag--set-py-isort-key-bindings)
  (jag--setup-py-isort-config))

(provide 'init-py-isort)
;;; init-py-isort.el ends here
