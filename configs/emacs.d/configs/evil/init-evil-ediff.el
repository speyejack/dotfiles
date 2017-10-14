;; init-evil-ediff.el --- Evil-keys-for-eDiff
;;; Commentary:

;;; Code:

(defun jag--set-evil-ediff-key-bindings ()
  "Set up keybindings for evil-ediff.")

(defun jag--setup-evil-ediff-config ()
  "Set up personal configuation for evil-ediff."
  (add-hook 'ediff-mode-hook 'evil-ediff-init))

(defun jag--load-evil-ediff-requires ()
  "Load required sub packages for evil-ediff.")

(use-package evil-ediff
  :ensure t
  :commands 'evil-ediff-init
  :config
  (jag--load-evil-ediff-requires)
  (jag--set-evil-ediff-key-bindings)
  (jag--setup-evil-ediff-config))

(provide 'init-evil-ediff)
;;; init-evil-ediff.el ends here
