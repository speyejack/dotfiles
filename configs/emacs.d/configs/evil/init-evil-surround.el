;;; init-evil-surround.el --- Allows-for-easy-changing-of-surrounding-items
;;; Commentary:

;;; Code:

(defun jag--set-evil-surround-key-bindings ()
  "Set up keybindings for evil-surround.")

(defun jag--setup-evil-surround-config ()
  "Set up personal configuation for evil-surround."
  (global-evil-surround-mode 1))

(defun jag--load-evil-surround-requires ()
  "Load required sub packages for evil-surround.")

(use-package evil-surround
  :ensure t
  :config
  (jag--load-evil-surround-requires)
  (jag--set-evil-surround-key-bindings)
  (jag--setup-evil-surround-config))

(provide 'init-evil-surround)
;;; init-evil-surround.el ends here
