;;; init-pdf-tools.el --- Tool-for-pdf
;;; Commentary:

;;; Code:

(defun jag--set-pdf-tools-key-bindings ()
  "Set up keybindings for pdf-tools.")

(defun jag--setup-pdf-tools-config ()
  "Set up personal configuation for pdf-tools.")

(defun jag--load-pdf-tools-requires ()
  "Load required sub packages for pdf-tools.")

(use-package pdf-tools
  :ensure t
  :config
  (jag--load-pdf-tools-requires)
  (jag--set-pdf-tools-key-bindings)
  (jag--setup-pdf-tools-config))

(provide 'init-pdf-tools)
;;; init-pdf-tools.el ends here
