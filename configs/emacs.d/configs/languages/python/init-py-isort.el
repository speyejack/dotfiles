;;; init-py-isort.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-py-isort-hooks ()
  "Add hooks to py-isort."
  (jag--add-py-isort-key-hooks)
  (jag--add-py-isort-other-hooks))

(defun jag--add-py-isort-key-hooks ()
  "Add key hooks to py-isort.")

(defun jag--add-py-isort-other-hooks ()
  "Add mode other to py-isort.")

(defun jag--set-py-isort-key-bindings ()
  "Set up keybindings for py-isort.")

(defun jag--setup-py-isort-config ()
  "Set up personal configuation for py-isort.")

(defun jag--load-py-isort-requires ()
  "Load required sub packages for py-isort.")

(use-package py-isort
  :init
  (jag--load-py-isort-requires)
  (jag--add-py-isort-hooks)
  :ensure t
  :config
  (jag--set-py-isort-key-bindings)
  (jag--setup-py-isort-config))

(provide 'init-py-isort)
;;; init-py-isort.el ends here