;;; init-evil-tutor.el --- Adds-evil-mode-tutor
;;; Commentary:

;;; Code:

(defun jag--set-evil-tutor-key-bindings ()
  "Set up keybindings for evil-tutor.")

(defun jag--setup-evil-tutor-config ()
  "Set up personal configuation for evil-tutor.")

(defun jag--load-evil-tutor-requires ()
  "Load required sub packages for evil-tutor.")

(use-package evil-tutor
  :ensure t
  :config
  (jag--load-evil-tutor-requires)
  (jag--set-evil-tutor-key-bindings)
  (jag--setup-evil-tutor-config))

(provide 'init-evil-tutor)
;;; init-evil-tutor.el ends here
