;;; init-evil-lisp-state.el --- Adds-a-lisp-state-for-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-lisp-state-key-bindings ()
  "Set up keybindings for evil-lisp-state.")

(defun jag--setup-evil-lisp-state-config ()
  "Set up personal configuation for evil-lisp-state.")

(defun jag--load-evil-lisp-state-requires ()
  "Load required sub packages for evil-lisp-state.")

(use-package evil-lisp-state
  :ensure t
  :config
  (jag--load-evil-lisp-state-requires)
  (jag--set-evil-lisp-state-key-bindings)
  (jag--setup-evil-lisp-state-config))

(provide 'init-evil-lisp-state)
;;; init-evil-lisp-state.el ends here
