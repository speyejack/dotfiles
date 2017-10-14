;;; init-livid-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-livid-mode-hooks ()
  "Add hooks to livid-mode."
  (jag--add-livid-mode-key-hooks)
  (jag--add-livid-mode-other-hooks))

(defun jag--add-livid-mode-key-hooks ()
  "Add keyboard hooks to livid-mode.")

(defun jag--add-livid-mode-other-hooks ()
  "Add other hooks to livid-mode.")

(defun jag--set-livid-mode-key-bindings ()
  "Set up keybindings for livid-mode.")

(defun jag--setup-livid-mode-config ()
  "Set up personal configuation for livid-mode.")

(defun jag--load-livid-mode-requires ()
  "Load required sub packages for livid-mode.")

(use-package livid-mode
  :init
  (jag--load-livid-mode-requires)
  (jag--add-livid-mode-hooks)
  :ensure t
  :config
  (jag--set-livid-mode-key-bindings)
  (jag--setup-livid-mode-config))

(provide 'init-livid-mode)
;;; init-livid-mode.el ends here