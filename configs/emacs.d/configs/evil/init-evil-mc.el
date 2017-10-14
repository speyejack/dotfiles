;;; init-evil-mc.el --- Multiple-cursors-for-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-mc-key-bindings ()
  "Set up keybindings for evil-mc.")

(defun jagj--setup-evil-mc-config ()
  "Set up personal configuation for evil-mc."
  (global-evil-mc-mode 1))

(defun jag--load-evil-mc-requires ()
  "Load required sub packages for evil-mc.")

(use-package evil-mc
  :ensure t
  :commands (evil-mc-make-cursor-here evil-mc-make-cursor-move-next-line evil-mc-make-cursor-move-prev-line)
  :config
  (jag--load-evil-mc-requires)
  (jag--set-evil-mc-key-bindings)
  (jag--setup-evil-mc-config))

(provide 'init-evil-mc)
;;; init-evil-mc.el ends here
