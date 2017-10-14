;;; init-evil-lisp-state.el --- Adds-a-lisp-state-for-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-lisp-state-hooks ()
  "Add hooks to evil-lisp-state."
  (jag--add-evil-lisp-state-key-hooks)
  (jag--add-evil-lisp-state-other-hooks))

(defun jag--add-evil-lisp-state-key-hooks ()
  "Add key hooks to evil-lisp-state.")

(defun jag--add-evil-lisp-state-other-hooks ()
  "Add mode other to evil-lisp-state.")

(defun jag--set-evil-lisp-state-key-bindings ()
  "Set up keybindings for evil-lisp-state.")

(defun jag--setup-evil-lisp-state-config ()
  "Set up personal configuation for evil-lisp-state.")

(defun jag--load-evil-lisp-state-requires ()
  "Load required sub packages for evil-lisp-state.")

(use-package evil-lisp-state
  :init
  (jag--load-evil-lisp-state-requires)
  (jag--add-evil-lisp-state-hooks)
  :ensure t
  :disabled
  :commands 'evil-lisp-state
  :config
  (jag--set-evil-lisp-state-key-bindings)
  (jag--setup-evil-lisp-state-config))

(provide 'init-evil-lisp-state)
;;; init-evil-lisp-state.el ends here