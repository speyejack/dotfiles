;;; init-pdf-tools.el --- Tool-for-pdf
;;; Commentary:

;;; Code:

(defun jag--add-pdf-tools-hooks ()
  "Add hooks to pdf-tools."
  (jag--add-pdf-tools-key-hooks)
  (jag--add-pdf-tools-other-hooks))

(defun jag--add-pdf-tools-key-hooks ()
  "Add keyboard hooks to pdf-tools.")

(defun jag--add-pdf-tools-other-hooks ()
  "Add other hooks to pdf-tools.")

(defun jag--set-pdf-tools-key-bindings ()
  "Set up keybindings for pdf-tools.")

(defun jag--setup-pdf-tools-config ()
  "Set up personal configuation for pdf-tools.")

(defun jag--load-pdf-tools-requires ()
  "Load required sub packages for pdf-tools.")

(use-package pdf-tools
  :init
  (jag--load-pdf-tools-requires)
  (jag--add-pdf-tools-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-pdf-tools-key-bindings)
  (jag--setup-pdf-tools-config))

(provide 'init-pdf-tools)
;;; init-pdf-tools.el ends here
