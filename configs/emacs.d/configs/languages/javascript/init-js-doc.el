;;; init-js-doc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-js-doc-key-bindings ()
  "Set up keybindings for js-doc.")

(defun jag--setup-js-doc-config ()
  "Set up personal configuation for js-doc.")

(defun jag--load-js-doc-requires ()
  "Load required sub packages for js-doc.")

(use-package js-doc
  :ensure t
  :config
  (jag--load-js-doc-requires)
  (jag--set-js-doc-key-bindings)
  (jag--setup-js-doc-config))

(provide 'init-js-doc)
;;; init-js-doc.el ends here
