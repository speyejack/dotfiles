;;; init-evil-anzu.el --- Search-counter-with-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-anzu-key-bindings ()
  "Set up keybindings for evil-anzu.")

(defun jag--setup-evil-anzu-config ()
  "Set up personal configuation for evil-anzu.")

(defun jag--load-evil-anzu-requires ()
  "Load required sub packages for evil-anzu.")

(use-package evil-anzu
  :ensure t
  :config
  (jag--load-evil-anzu-requires)
  (jag--set-evil-anzu-key-bindings)
  (jag--setup-evil-anzu-config))

(provide 'init-evil-anzu)
;;; init-evil-anzu.el ends here
