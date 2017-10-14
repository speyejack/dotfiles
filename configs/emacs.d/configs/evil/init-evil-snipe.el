;;; init-evil-snipe.el --- Allows-for-advance-character-searching-(f/t-key) for-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-snipe-hooks ()
  "Add hooks to evil-snipe."
  (jag--add-evil-snipe-key-hooks)
  (jag--add-evil-snipe-other-hooks))

(defun jag--add-evil-snipe-key-hooks ()
  "Add key hooks to evil-snipe.")

(defun jag--add-evil-snipe-other-hooks ()
  "Add mode other to evil-snipe.")

(defun jag--set-evil-snipe-key-bindings ()
  "Set up keybindings for evil-snipe.")

(defun jag--setup-evil-snipe-config ()
  "Set up personal configuation for evil-snipe."
  (evil-snipe-mode 1)
  (evil-snipe-override-mode 1))

(defun jag--load-evil-snipe-requires ()
  "Load required sub packages for evil-snipe.")

(use-package evil-snipe
  :init
  (jag--load-evil-snipe-requires)
  (jag--add-evil-snipe-hooks)
  :ensure t
  :after evil
  :diminish evil-snipe-mode
  :diminish evil-snipe-local-mode
  :config
  (jag--set-evil-snipe-key-bindings)
  (jag--setup-evil-snipe-config))

(provide 'init-evil-snipe)
;;; init-evil-snipe.el ends here