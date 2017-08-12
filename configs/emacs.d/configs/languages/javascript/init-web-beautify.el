;;; init-web-beautify.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-web-beautify-key-bindings ()
  "Set up keybindings for web-beautify.")

(defun jag--setup-web-beautify-config ()
  "Set up personal configuation for web-beautify.")

(defun jag--load-web-beautify-requires ()
  "Load required sub packages for web-beautify.")

(use-package web-beautify
  :ensure t
  :config
  (jag--load-web-beautify-requires)
  (jag--set-web-beautify-key-bindings)
  (jag--setup-web-beautify-config))

(provide 'init-web-beautify)
;;; init-web-beautify.el ends here
