;;; init-js-doc.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-js-doc-hooks ()
  "Add hooks to js-doc."
  (jag--add-js-doc-key-hooks)
  (jag--add-js-doc-other-hooks))

(defun jag--add-js-doc-key-hooks ()
  "Add key hooks to js-doc.")

(defun jag--add-js-doc-other-hooks ()
  "Add mode other to js-doc.")

(defun jag--set-js-doc-key-bindings ()
  "Set up keybindings for js-doc.")

(defun jag--setup-js-doc-config ()
  "Set up personal configuation for js-doc.")

(defun jag--load-js-doc-requires ()
  "Load required sub packages for js-doc.")

(use-package js-doc
  :init
  (jag--load-js-doc-requires)
  (jag--add-js-doc-hooks)
  :ensure t
  :config
  (jag--set-js-doc-key-bindings)
  (jag--setup-js-doc-config))

(provide 'init-js-doc)
;;; init-js-doc.el ends here