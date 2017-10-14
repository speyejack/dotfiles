;;; init-evil-tutor.el --- Adds-evil-mode-tutor
;;; Commentary:

;;; Code:

(defun jag--add-evil-tutor-hooks ()
  "Add hooks to evil-tutor."
  (jag--add-evil-tutor-key-hooks)
  (jag--add-evil-tutor-other-hooks))

(defun jag--add-evil-tutor-key-hooks ()
  "Add key hooks to evil-tutor.")

(defun jag--add-evil-tutor-other-hooks ()
  "Add mode other to evil-tutor.")

(defun jag--set-evil-tutor-key-bindings ()
  "Set up keybindings for evil-tutor.")

(defun jag--setup-evil-tutor-config ()
  "Set up personal configuation for evil-tutor.")

(defun jag--load-evil-tutor-requires ()
  "Load required sub packages for evil-tutor.")

(use-package evil-tutor
  :init
  (jag--load-evil-tutor-requires)
  (jag--add-evil-tutor-hooks)
  :ensure t
  :commands 'evil-tutor
  :config
  (jag--set-evil-tutor-key-bindings)
  (jag--setup-evil-tutor-config))

(provide 'init-evil-tutor)
;;; init-evil-tutor.el ends here