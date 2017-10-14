;;; init-evil-surround.el --- Allows-for-easy-changing-of-surrounding-items
;;; Commentary:

;;; Code:

(defun jag--add-evil-surround-hooks ()
  "Add hooks to evil-surround."
  (jag--add-evil-surround-key-hooks)
  (jag--add-evil-surround-other-hooks))

(defun jag--add-evil-surround-key-hooks ()
  "Add key hooks to evil-surround.")

(defun jag--add-evil-surround-other-hooks ()
  "Add mode other to evil-surround.")

(defun jag--set-evil-surround-key-bindings ()
  "Set up keybindings for evil-surround.")

(defun jag--setup-evil-surround-config ()
  "Set up personal configuation for evil-surround."
  (global-evil-surround-mode 1))

(defun jag--load-evil-surround-requires ()
  "Load required sub packages for evil-surround.")

(use-package evil-surround
  :init
  (jag--load-evil-surround-requires)
  (jag--add-evil-surround-hooks)
  :ensure t
  :after evil
  :config
  (jag--set-evil-surround-key-bindings)
  (jag--setup-evil-surround-config))

(provide 'init-evil-surround)
;;; init-evil-surround.el ends here