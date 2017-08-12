;;; init-evil-indent-plus.el --- Adds-commands-for-indenting-w/ evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-indent-plus-key-bindings ()
  "Set up keybindings for evil-indent-plus.")

(defun jag--setup-evil-indent-plus-config ()
  "Set up personal configuation for evil-indent-plus.")

(defun jag--load-evil-indent-plus-requires ()
  "Load required sub packages for evil-indent-plus.")

(use-package evil-indent-plus
  :ensure t
  :config
  (jag--load-evil-indent-plus-requires)
  (jag--set-evil-indent-plus-key-bindings)
  (jag--setup-evil-indent-plus-config))

(provide 'init-evil-indent-plus)
;;; init-evil-indent-plus.el ends here
