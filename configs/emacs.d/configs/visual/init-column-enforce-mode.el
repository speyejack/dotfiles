;;; init-column-enforce-mode.el --- Highlights-text-that-goes-beyond-a-column-(80-col-rule)
;;; Commentary:

;;; Code:

(defun jag--set-column-enforce-mode-key-bindings ()
  "Set up keybindings for column-enforce-mode.")

(defun jag--setup-column-enforce-mode-config ()
  "Set up personal configuation for column-enforce-mode.")

(defun jag--load-column-enforce-mode-requires ()
  "Load required sub packages for column-enforce-mode.")

(use-package column-enforce-mode
  :ensure t
  :config
  (jag--load-column-enforce-mode-requires)
  (jag--set-column-enforce-mode-key-bindings)
  (jag--setup-column-enforce-mode-config))

(provide 'init-column-enforce-mode)
;;; init-column-enforce-mode.el ends here
