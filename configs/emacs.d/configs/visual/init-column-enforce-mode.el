;;; init-column-enforce-mode.el --- Highlights-text-that-goes-beyond-a-column-(80-col-rule)
;;; Commentary:

;;; Code:

(defun jag--add-column-enforce-mode-hooks ()
  "Add hooks to column-enforce-mode."
  (jag--add-column-enforce-mode-key-hooks)
  (jag--add-column-enforce-mode-other-hooks))

(defun jag--add-column-enforce-mode-key-hooks ()
  "Add key hooks to column-enforce-mode.")

(defun jag--add-column-enforce-mode-other-hooks ()
  "Add mode other to column-enforce-mode.")

(defun jag--set-column-enforce-mode-key-bindings ()
  "Set up keybindings for column-enforce-mode.")

(defun jag--setup-column-enforce-mode-config ()
  "Set up personal configuation for column-enforce-mode.")

(defun jag--load-column-enforce-mode-requires ()
  "Load required sub packages for column-enforce-mode.")

(use-package column-enforce-mode
  :init
  (jag--load-column-enforce-mode-requires)
  (jag--add-column-enforce-mode-hooks)
  :ensure t
  :config
  (jag--set-column-enforce-mode-key-bindings)
  (jag--setup-column-enforce-mode-config))

(provide 'init-column-enforce-mode)
;;; init-column-enforce-mode.el ends here