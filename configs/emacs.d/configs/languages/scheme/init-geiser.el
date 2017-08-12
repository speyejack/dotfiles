;;; init-geiser.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-geiser-key-bindings ()
  "Set up keybindings for geiser.")

(defun jag--setup-geiser-config ()
  "Set up personal configuation for geiser.")

(defun jag--load-geiser-requires ()
  "Load required sub packages for geiser.")

(use-package geiser
  :ensure t
  :config
  (jag--load-geiser-requires)
  (jag--set-geiser-key-bindings)
  (jag--setup-geiser-config))

(provide 'init-geiser)
;;; init-geiser.el ends here
