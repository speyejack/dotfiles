;;; init-evil-iedit-state.el --- Adds-Iedit-and-Iedit-insert-states
;;; Commentary:

;;; Code:

(defun jag--set-evil-iedit-state-key-bindings ()
  "Set up keybindings for evil-iedit-state.")

(defun jag--setup-evil-iedit-state-config ()
  "Set up personal configuation for evil-iedit-state.")

(defun jag--load-evil-iedit-state-requires ()
  "Load required sub packages for evil-iedit-state.")

(use-package evil-iedit-state
  :ensure t
  :config
  (jag--load-evil-iedit-state-requires)
  (jag--set-evil-iedit-state-key-bindings)
  (jag--setup-evil-iedit-state-config))

(provide 'init-evil-iedit-state)
;;; init-evil-iedit-state.el ends here
