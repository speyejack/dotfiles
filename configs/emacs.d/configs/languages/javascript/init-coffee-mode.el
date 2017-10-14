;;; init-coffee-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-coffee-mode-hooks ()
  "Add hooks to coffee-mode."
  (jag--add-coffee-mode-key-hooks)
  (jag--add-coffee-mode-other-hooks))

(defun jag--add-coffee-mode-key-hooks ()
  "Add keyboard hooks to coffee-mode.")

(defun jag--add-coffee-mode-other-hooks ()
  "Add other hooks to coffee-mode.")

(defun jag--set-coffee-mode-key-bindings ()
  "Set up keybindings for coffee-mode.")

(defun jag--setup-coffee-mode-config ()
  "Set up personal configuation for coffee-mode.")

(defun jag--load-coffee-mode-requires ()
  "Load required sub packages for coffee-mode.")

(use-package coffee-mode
  :init
  (jag--load-coffee-mode-requires)
  (jag--add-coffee-mode-hooks)
  :ensure t
  :config
  (jag--set-coffee-mode-key-bindings)
  (jag--setup-coffee-mode-config))

(provide 'init-coffee-mode)
;;; init-coffee-mode.el ends here