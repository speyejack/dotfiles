;;; init-skewer-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-skewer-mode-hooks ()
  "Add hooks to skewer-mode."
  (jag--add-skewer-mode-key-hooks)
  (jag--add-skewer-mode-other-hooks))

(defun jag--add-skewer-mode-key-hooks ()
  "Add keyboard hooks to skewer-mode.")

(defun jag--add-skewer-mode-other-hooks ()
  "Add other hooks to skewer-mode.")

(defun jag--set-skewer-mode-key-bindings ()
  "Set up keybindings for skewer-mode.")

(defun jag--setup-skewer-mode-config ()
  "Set up personal configuation for skewer-mode.")

(defun jag--load-skewer-mode-requires ()
  "Load required sub packages for skewer-mode.")

(use-package skewer-mode
  :init
  (jag--load-skewer-mode-requires)
  (jag--add-skewer-mode-hooks)
  :ensure t
  :config
  (jag--set-skewer-mode-key-bindings)
  (jag--setup-skewer-mode-config))

(provide 'init-skewer-mode)
;;; init-skewer-mode.el ends here