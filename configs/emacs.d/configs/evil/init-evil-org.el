;;; init-evil-org.el --- Adds-evil-keys-to-org
;;; Commentary:

;;; Code:

(defun jag--add-evil-org-hooks ()
  "Add hooks to evil-org."
  (jag--add-evil-org-key-hooks)
  (jag--add-evil-org-other-hooks))

(defun jag--add-evil-org-key-hooks ()
  "Add key hooks to evil-org.")

(defun jag--add-evil-org-other-hooks ()
  "Add mode other to evil-org.")

(defun jag--set-evil-org-key-bindings ()
  "Set up keybindings for evil-org.")

(defun jag--setup-evil-org-config ()
  "Set up personal configuation for evil-org."
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading)))))

(defun jag--load-evil-org-requires ()
  "Load required sub packages for evil-org.")

(use-package evil-org
  :init
  (jag--load-evil-org-requires)
  (jag--add-evil-org-hooks)
  :ensure t
  :commands 'evil-org-mode
  :config
  (jag--set-evil-org-key-bindings)
  (jag--setup-evil-org-config))

(provide 'init-evil-org)
;;; init-evil-org.el ends here