;;; init-evil-anzu.el --- Search-counter-with-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-anzu-hooks ()
  "Add hooks to evil-anzu."
  (jag--add-evil-anzu-key-hooks)
  (jag--add-evil-anzu-other-hooks))

(defun jag--add-evil-anzu-key-hooks ()
  "Add key hooks to evil-anzu.")

(defun jag--add-evil-anzu-other-hooks ()
  "Add mode other to evil-anzu.")

(defun jag--set-evil-anzu-key-bindings ()
  "Set up keybindings for evil-anzu.")

(defun jag--setup-evil-anzu-config ()
  "Set up personal configuation for evil-anzu.")

(defun jag--load-evil-anzu-requires ()
  "Load required sub packages for evil-anzu.")

(use-package evil-anzu
  :init
  (jag--load-evil-anzu-requires)
  (jag--add-evil-anzu-hooks)
  :ensure t
  :after evil
  :config
  (jag--set-evil-anzu-key-bindings)
  (jag--setup-evil-anzu-config))

(provide 'init-evil-anzu)
;;; init-evil-anzu.el ends here