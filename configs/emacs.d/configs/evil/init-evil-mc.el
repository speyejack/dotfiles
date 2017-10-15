;;; init-evil-mc.el --- Multiple-cursors-for-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-mc-hooks ()
  "Add hooks to evil-mc."
  (jag--add-evil-mc-key-hooks)
  (jag--add-evil-mc-other-hooks))

(defun jag--add-evil-mc-key-hooks ()
  "Add keyboard hooks to evil-mc.")

(defun jag--add-evil-mc-other-hooks ()
  "Add other hooks to evil-mc.")

(defun jag--set-evil-mc-key-bindings ()
  "Set up keybindings for evil-mc.")

(defun jag--setup-evil-mc-config ()
  "Set up personal configuation for evil-mc."
  (global-evil-mc-mode))

(defun jag--load-evil-mc-requires ()
  "Load required sub packages for evil-mc.")

(use-package evil-mc
  :init
  (jag--load-evil-mc-requires)
  (jag--add-evil-mc-hooks)
  :ensure t
  :commands (evil-mc-make-cursor-here evil-mc-make-cursor-move-next-line evil-mc-make-cursor-move-prev-line)
  :config
  (jag--set-evil-mc-key-bindings)
  (jag--setup-evil-mc-config))

(provide 'init-evil-mc)
;;; init-evil-mc.el ends here
