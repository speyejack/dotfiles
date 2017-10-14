;;; init-evil-commentary.el --- Allows-for-quick-commenting
;;; Commentary:

;;; Code:

(defun jag--add-evil-commentary-hooks ()
  "Add hooks to evil-commentary."
  (jag--add-evil-commentary-key-hooks)
  (jag--add-evil-commentary-other-hooks))

(defun jag--add-evil-commentary-key-hooks ()
  "Add key hooks to evil-commentary.")

(defun jag--add-evil-commentary-other-hooks ()
  "Add mode other to evil-commentary.")

(defun jag--set-evil-commentary-key-bindings ()
  "Set up keybindings for evil-commentary.")

(defun jag--setup-evil-commentary-config ()
  "Set up personal configuation for evil-commentary."
  (evil-commentary-mode 1))

(defun jag--load-evil-commentary-requires ()
  "Load required sub packages for evil-commentary.")

(use-package evil-commentary
  :init
  (jag--load-evil-commentary-requires)
  (jag--add-evil-commentary-hooks)
  :ensure t
  :config
  (jag--set-evil-commentary-key-bindings)
  (jag--setup-evil-commentary-config))

(provide 'init-evil-commentary)
;;; init-evil-commentary.el ends here