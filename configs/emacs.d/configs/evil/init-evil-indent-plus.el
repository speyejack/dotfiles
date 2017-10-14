;;; init-evil-indent-plus.el --- Adds-commands-for-indenting-w/ evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-indent-plus-hooks ()
  "Add hooks to evil-indent-plus."
  (jag--add-evil-indent-plus-key-hooks)
  (jag--add-evil-indent-plus-other-hooks))

(defun jag--add-evil-indent-plus-key-hooks ()
  "Add key hooks to evil-indent-plus.")

(defun jag--add-evil-indent-plus-other-hooks ()
  "Add mode other to evil-indent-plus.")

(defun jag--set-evil-indent-plus-key-bindings ()
  "Set up keybindings for evil-indent-plus.")

(defun jag--setup-evil-indent-plus-config ()
  "Set up personal configuation for evil-indent-plus."
  (evil-indent-plus-default-bindings))

(defun jag--load-evil-indent-plus-requires ()
  "Load required sub packages for evil-indent-plus.")

(use-package evil-indent-plus
  :init
  (jag--load-evil-indent-plus-requires)
  (jag--add-evil-indent-plus-hooks)
  :ensure t
  :commands (evil-indent-plus-i-indent evil-indent-plus-a-indent)
  :config
  (jag--set-evil-indent-plus-key-bindings)
  (jag--setup-evil-indent-plus-config))

(provide 'init-evil-indent-plus)
;;; init-evil-indent-plus.el ends here