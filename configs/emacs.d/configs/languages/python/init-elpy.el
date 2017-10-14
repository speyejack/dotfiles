;;; init-elpy.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-elpy-hooks ()
  "Add hooks to elpy."
  (jag--add-elpy-key-hooks)
  (jag--add-elpy-other-hooks))

(defun jag--add-elpy-key-hooks ()
  "Add key hooks to elpy.")

(defun jag--add-elpy-other-hooks ()
  "Add mode other to elpy.")

(defun jag--set-elpy-key-bindings ()
  "Set up keybindings for elpy.")

(defun jag--setup-elpy-config ()
  "Set up personal configuation for elpy."
  (setq elpy-modules (remove 'elpy-module-highlight-indentation elpy-modules))
  (add-hook 'python-mode-hook 'elpy-mode))

(defun jag--load-elpy-requires ()
  "Load required sub packages for elpy.")

(use-package elpy
  :init
  (jag--load-elpy-requires)
  (jag--add-elpy-hooks)
  :ensure t
  :config
  (jag--set-elpy-key-bindings)
  (jag--setup-elpy-config))

(provide 'init-elpy)
;;; init-elpy.el ends here