;;; init-js2-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-js2-mode-key-bindings ()
  "Set up keybindings for js2-mode.")

(defun jag--setup-js2-mode-config ()
  "Set up personal configuation for js2-mode.")

(defun jag--load-js2-mode-requires ()
  "Load required sub packages for js2-mode.")

(use-package js2-mode
  :ensure t
  :config
  (jag--load-js2-mode-requires)
  (jag--set-js2-mode-key-bindings)
  (jag--setup-js2-mode-config))

(provide 'init-js2-mode)
;;; init-js2-mode.el ends here
