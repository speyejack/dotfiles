;;; init-json-snatcher.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-json-snatcher-key-bindings ()
  "Set up keybindings for json-snatcher.")

(defun jag--setup-json-snatcher-config ()
  "Set up personal configuation for json-snatcher.")

(defun jag--load-json-snatcher-requires ()
  "Load required sub packages for json-snatcher.")

(use-package json-snatcher
  :ensure t
  :config
  (jag--load-json-snatcher-requires)
  (jag--set-json-snatcher-key-bindings)
  (jag--setup-json-snatcher-config))

(provide 'init-json-snatcher)
;;; init-json-snatcher.el ends here
