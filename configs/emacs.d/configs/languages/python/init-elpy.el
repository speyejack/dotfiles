;;; init-elpy.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-elpy-key-bindings ()
  "Set up keybindings for elpy.")

(defun jag--setup-elpy-config ()
  "Set up personal configuation for elpy."
  (setq elpy-modules (remove 'elpy-module-highlight-indentation elpy-modules))
  (add-hook 'python-mode-hook 'elpy-enable))

(defun jag--load-elpy-requires ()
  "Load required sub packages for elpy.")

(use-package elpy
  :ensure t
  :config
  (jag--load-elpy-requires)
  (jag--set-elpy-key-bindings)
  (jag--setup-elpy-config))

(provide 'init-elpy)
;;; init-elpy.el ends here
