;;; init-clean-aindent-mode.el --- Auto-indention-that-removes-excess-whitespace-if-needed
;;; Commentary:

;;; Code:

(defun jag--set-clean-aindent-mode-key-bindings ()
  "Set up keybindings for clean-aindent-mode.")

(defun jag--setup-clean-aindent-mode-config ()
  "Set up personal configuation for clean-aindent-mode.")

(defun jag--load-clean-aindent-mode-requires ()
  "Load required sub packages for clean-aindent-mode.")

(use-package clean-aindent-mode
  :ensure t
  :config
  (jag--load-clean-aindent-mode-requires)
  (jag--set-clean-aindent-mode-key-bindings)
  (jag--setup-clean-aindent-mode-config))

(provide 'init-clean-aindent-mode)
;;; init-clean-aindent-mode.el ends here
