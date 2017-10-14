;;; init-geiser.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-geiser-hooks ()
  "Add hooks to geiser."
  (jag--add-geiser-key-hooks)
  (jag--add-geiser-other-hooks))

(defun jag--add-geiser-key-hooks ()
  "Add keyboard hooks to geiser.")

(defun jag--add-geiser-other-hooks ()
  "Add other hooks to geiser.")

(defun jag--set-geiser-key-bindings ()
  "Set up keybindings for geiser.")

(defun jag--setup-geiser-config ()
  "Set up personal configuation for geiser.")

(defun jag--load-geiser-requires ()
  "Load required sub packages for geiser.")

(use-package geiser
  :init
  (jag--load-geiser-requires)
  (jag--add-geiser-hooks)
  :ensure t
  :config
  (jag--set-geiser-key-bindings)
  (jag--setup-geiser-config))

(provide 'init-geiser)
;;; init-geiser.el ends here