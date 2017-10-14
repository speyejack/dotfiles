;;; init-evil-matchit.el --- Advance-matching-for-%-key
;;; Commentary:

;;; Code:

(defun jag--add-evil-matchit-hooks ()
  "Add hooks to evil-matchit."
  (jag--add-evil-matchit-key-hooks)
  (jag--add-evil-matchit-other-hooks))

(defun jag--add-evil-matchit-key-hooks ()
  "Add key hooks to evil-matchit.")

(defun jag--add-evil-matchit-other-hooks ()
  "Add mode other to evil-matchit.")

(defun jag--set-evil-matchit-key-bindings ()
  "Set up keybindings for evil-matchit.")

(defun jag--setup-evil-matchit-config ()
  "Set up personal configuation for evil-matchit."
  (global-evil-matchit-mode 1))

(defun jag--load-evil-matchit-requires ()
  "Load required sub packages for evil-matchit.")

(use-package evil-matchit
  :init
  (jag--load-evil-matchit-requires)
  (jag--add-evil-matchit-hooks)
  :ensure t
  :config
  (jag--set-evil-matchit-key-bindings)
  (jag--setup-evil-matchit-config))

(provide 'init-evil-matchit)
;;; init-evil-matchit.el ends here