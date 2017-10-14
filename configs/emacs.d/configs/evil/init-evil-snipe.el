;;; init-evil-snipe.el --- Allows-for-advance-character-searching-(f/t-key) for-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-snipe-key-bindings ()
  "Set up keybindings for evil-snipe.")

(defun jag--setup-evil-snipe-config ()
  "Set up personal configuation for evil-snipe."
  (evil-snipe-mode 1)
  (evil-snipe-override-mode 1))

(defun jag--load-evil-snipe-requires ()
  "Load required sub packages for evil-snipe.")

(use-package evil-snipe
  :ensure t
  :after evil
  :diminish evil-snipe-mode
  :diminish evil-snipe-local-mode
  :config
  (jag--load-evil-snipe-requires)
  (jag--set-evil-snipe-key-bindings)
  (jag--setup-evil-snipe-config))

(provide 'init-evil-snipe)
;;; init-evil-snipe.el ends here
