;;; init-evil-iedit-state.el --- Adds-Iedit-and-Iedit-insert-states
;;; Commentary:

;;; Code:

(defun jag--add-evil-iedit-state-hooks ()
  "Add hooks to evil-iedit-state."
  (jag--add-evil-iedit-state-key-hooks)
  (jag--add-evil-iedit-state-other-hooks))

(defun jag--add-evil-iedit-state-key-hooks ()
  "Add key hooks to evil-iedit-state.")

(defun jag--add-evil-iedit-state-other-hooks ()
  "Add mode other to evil-iedit-state.")

(defun jag--set-evil-iedit-state-key-bindings ()
  "Set up keybindings for evil-iedit-state.")

(defun jag--setup-evil-iedit-state-config ()
  "Set up personal configuation for evil-iedit-state.")

(defun jag--load-evil-iedit-state-requires ()
  "Load required sub packages for evil-iedit-state.")

(use-package evil-iedit-state
  :init
  (jag--load-evil-iedit-state-requires)
  (jag--add-evil-iedit-state-hooks)
  :ensure t
  :commands 'iedit-mode
  :config
  (jag--set-evil-iedit-state-key-bindings)
  (jag--setup-evil-iedit-state-config))

(provide 'init-evil-iedit-state)
;;; init-evil-iedit-state.el ends here