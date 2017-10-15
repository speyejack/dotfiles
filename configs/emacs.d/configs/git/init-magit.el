;;; init-magit.el --- Emacs-git-interface
;;; Commentary:

;;; Code:

(defun jag--add-magit-hooks ()
  "Add hooks to magit."
  (jag--add-magit-key-hooks)
  (jag--add-magit-other-hooks))

(defun jag--add-magit-key-hooks ()
  "Add keyboard hooks to magit.")

(defun jag--add-magit-other-hooks ()
  "Add other hooks to magit.")

(defun jag--set-magit-key-bindings ()
  "Set up keybindings for magit.")

(defun jag--setup-magit-config ()
  "Set up personal configuation for magit."
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode))

(defun jag--load-magit-requires ()
  "Load required sub packages for magit.")

(use-package magit
  :init
  (jag--load-magit-requires)
  (jag--add-magit-hooks)
  :ensure t
  :commands 'magit-status
  :config
  (jag--set-magit-key-bindings)
  (jag--setup-magit-config))

(provide 'init-magit)
;;; init-magit.el ends here
