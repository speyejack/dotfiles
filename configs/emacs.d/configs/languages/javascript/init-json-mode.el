;;; init-json-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-json-mode-hooks ()
  "Add hooks to json-mode."
  (jag--add-json-mode-key-hooks)
  (jag--add-json-mode-other-hooks))

(defun jag--add-json-mode-key-hooks ()
  "Add key hooks to json-mode.")

(defun jag--add-json-mode-other-hooks ()
  "Add mode other to json-mode.")

(defun jag--set-json-mode-key-bindings ()
  "Set up keybindings for json-mode.")

(defun jag--setup-json-mode-config ()
  "Set up personal configuation for json-mode.")

(defun jag--load-json-mode-requires ()
  "Load required sub packages for json-mode.")

(use-package json-mode
  :init
  (jag--load-json-mode-requires)
  (jag--add-json-mode-hooks)
  :ensure t
  :config
  (jag--set-json-mode-key-bindings)
  (jag--setup-json-mode-config))

(provide 'init-json-mode)
;;; init-json-mode.el ends here