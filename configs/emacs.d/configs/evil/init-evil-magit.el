;;; init-evil-magit.el --- Adds-evil-keys-to-magit
;;; Commentary:

;;; Code:

(defun jag--add-evil-magit-hooks ()
  "Add hooks to evil-magit."
  (jag--add-evil-magit-key-hooks)
  (jag--add-evil-magit-other-hooks))

(defun jag--add-evil-magit-key-hooks ()
  "Add key hooks to evil-magit.")

(defun jag--add-evil-magit-other-hooks ()
  "Add mode other to evil-magit.")

(defun jag--set-evil-magit-key-bindings ()
  "Set up keybindings for evil-magit.")

(defun jag--setup-evil-magit-config ()
  "Set up personal configuation for evil-magit."
  (add-hook 'magit-mode-hook 'evil-local-mode))

(defun jag--load-evil-magit-requires ()
  "Load required sub packages for evil-magit.")

(use-package evil-magit
  :init
  (jag--load-evil-magit-requires)
  (jag--add-evil-magit-hooks)
  :ensure t
  :after magit
  :config
  (jag--set-evil-magit-key-bindings)
  (jag--setup-evil-magit-config))

(provide 'init-evil-magit)
;;; init-evil-magit.el ends here