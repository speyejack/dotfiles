;;; init-elpy-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-elpy-mode-key-bindings ()
  "Set up keybindings for elpy-mode.")

(defun jag--setup-elpy-mode-config ()
  "Set up personal configuation for elpy-mode."
  (elpy-enable))

(defun jag--load-elpy-mode-requires ()
  "Load required sub packages for elpy-mode.")

(use-package elpy-mode
  :ensure t
  :config
  (jag--load-elpy-mode-requires)
  (jag--set-elpy-mode-key-bindings)
  (jag--setup-elpy-mode-config))

(provide 'init-elpy-mode)
;;; init-elpy-mode.el ends here
