;;; init-evil-ediff.el --- Evil-keys-for-eDiff
;;; Commentary: asdfsdf

;;; Code:

(defun jag--add-evil-ediff-hooks ()
  "Add hooks to evil-ediff."
  (jag--add-evil-ediff-key-hooks)
  (jag--add-evil-ediff-other-hooks))

(defun jag--add-evil-ediff-key-hooks ()
  "Add keyboard hooks to evil-ediff.")

(defun jag--add-evil-ediff-other-hooks ()
  "Add other hooks to evil-ediff."
  (add-hook 'ediff-mode-hook 'evil-ediff-init))

(defun jag--set-evil-ediff-key-bindings ()
  "Set up keybindings for evil-ediff.")

(defun jag--setup-evil-ediff-config ()
  "Set up personal configuation for evil-ediff.")

(defun jag--load-evil-ediff-requires ()
  "Load required sub packages for evil-ediff.")

(use-package evil-ediff
  :init
  (jag--load-evil-ediff-requires)
  (jag--add-evil-ediff-hooks)
  :ensure t
  :commands 'evil-ediff-init
  :config
  (jag--set-evil-ediff-key-bindings)
  (jag--setup-evil-ediff-config))

(provide 'init-evil-ediff)
;;; init-evil-ediff.el ends here
