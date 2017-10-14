;;; init-clean-aindent-mode.el --- Auto-indention-that-removes-excess-whitespace-if-needed
;;; Commentary:

;;; Code:

(defun jag--add-clean-aindent-mode-hooks ()
  "Add hooks to clean-aindent-mode."
  (jag--add-clean-aindent-mode-key-hooks)
  (jag--add-clean-aindent-mode-other-hooks))

(defun jag--add-clean-aindent-mode-key-hooks ()
  "Add key hooks to clean-aindent-mode.")

(defun jag--add-clean-aindent-mode-other-hooks ()
  "Add mode other to clean-aindent-mode.")

(defun jag--set-clean-aindent-mode-key-bindings ()
  "Set up keybindings for clean-aindent-mode.")

(defun jag--setup-clean-aindent-mode-config ()
  "Set up personal configuation for clean-aindent-mode.")

(defun jag--load-clean-aindent-mode-requires ()
  "Load required sub packages for clean-aindent-mode.")

(use-package clean-aindent-mode
  :init
  (jag--load-clean-aindent-mode-requires)
  (jag--add-clean-aindent-mode-hooks)
  :ensure t
  :config
  (jag--set-clean-aindent-mode-key-bindings)
  (jag--setup-clean-aindent-mode-config))

(provide 'init-clean-aindent-mode)
;;; init-clean-aindent-mode.el ends here