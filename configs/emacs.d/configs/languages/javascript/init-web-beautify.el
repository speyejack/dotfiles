;;; init-web-beautify.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-web-beautify-hooks ()
  "Add hooks to web-beautify."
  (jag--add-web-beautify-key-hooks)
  (jag--add-web-beautify-other-hooks))

(defun jag--add-web-beautify-key-hooks ()
  "Add keyboard hooks to web-beautify.")

(defun jag--add-web-beautify-other-hooks ()
  "Add other hooks to web-beautify.")

(defun jag--set-web-beautify-key-bindings ()
  "Set up keybindings for web-beautify.")

(defun jag--setup-web-beautify-config ()
  "Set up personal configuation for web-beautify.")

(defun jag--load-web-beautify-requires ()
  "Load required sub packages for web-beautify.")

(use-package web-beautify
  :init
  (jag--load-web-beautify-requires)
  (jag--add-web-beautify-hooks)
  :ensure t
  :config
  (jag--set-web-beautify-key-bindings)
  (jag--setup-web-beautify-config))

(provide 'init-web-beautify)
;;; init-web-beautify.el ends here