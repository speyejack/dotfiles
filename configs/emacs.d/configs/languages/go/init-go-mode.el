;;; init-go-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-go-mode-hooks ()
  "Add hooks to go-mode."
  (jag--add-go-mode-key-hooks)
  (jag--add-go-mode-other-hooks))

(defun jag--add-go-mode-key-hooks ()
  "Add key hooks to go-mode.")

(defun jag--add-go-mode-other-hooks ()
  "Add mode other to go-mode.")

(defun jag--set-go-mode-key-bindings ()
  "Set up keybindings for go-mode.")

(defun jag--setup-go-mode-config ()
  "Set up personal configuation for go-mode.")

(defun jag--load-go-mode-requires ()
  "Load required sub packages for go-mode.")

(use-package go-mode
  :init
  (jag--load-go-mode-requires)
  (jag--add-go-mode-hooks)
  :ensure t
  :config
  (jag--set-go-mode-key-bindings)
  (jag--setup-go-mode-config))

(provide 'init-go-mode)
;;; init-go-mode.el ends here