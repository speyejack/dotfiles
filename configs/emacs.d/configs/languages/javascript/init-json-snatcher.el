;;; init-json-snatcher.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-json-snatcher-hooks ()
  "Add hooks to json-snatcher."
  (jag--add-json-snatcher-key-hooks)
  (jag--add-json-snatcher-other-hooks))

(defun jag--add-json-snatcher-key-hooks ()
  "Add keyboard hooks to json-snatcher.")

(defun jag--add-json-snatcher-other-hooks ()
  "Add other hooks to json-snatcher.")

(defun jag--set-json-snatcher-key-bindings ()
  "Set up keybindings for json-snatcher.")

(defun jag--setup-json-snatcher-config ()
  "Set up personal configuation for json-snatcher.")

(defun jag--load-json-snatcher-requires ()
  "Load required sub packages for json-snatcher.")

(use-package json-snatcher
  :init
  (jag--load-json-snatcher-requires)
  (jag--add-json-snatcher-hooks)
  :ensure t
  :config
  (jag--set-json-snatcher-key-bindings)
  (jag--setup-json-snatcher-config))

(provide 'init-json-snatcher)
;;; init-json-snatcher.el ends here