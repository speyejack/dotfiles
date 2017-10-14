;;; init-evil-org.el --- Adds-evil-keys-to-org
;;; Commentary:

;;; Code:

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
  :ensure t
  :commands 'evil-org-mode
  :config
  (jag--load-evil-org-requires)
  (jag--set-evil-org-key-bindings)
  (jag--setup-evil-org-config))

(provide 'init-evil-org)
;;; init-evil-org.el ends here
