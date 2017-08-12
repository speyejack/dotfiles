;;; init-json-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-json-mode-key-bindings ()
  "Set up keybindings for json-mode.")

(defun jag--setup-json-mode-config ()
  "Set up personal configuation for json-mode.")

(defun jag--load-json-mode-requires ()
  "Load required sub packages for json-mode.")

(use-package json-mode
  :ensure t
  :config
  (jag--load-json-mode-requires)
  (jag--set-json-mode-key-bindings)
  (jag--setup-json-mode-config))

(provide 'init-json-mode)
;;; init-json-mode.el ends here
