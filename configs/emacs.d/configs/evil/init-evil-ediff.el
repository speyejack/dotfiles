;;; init-evil-ediff.el --- Evil-keys-for-eDiff
;;; Commentary:

;;; Code:

(defun jag--set-evil-ediff-key-bindings ()
  "Set up keybindings for evil-ediff.")

(defun jag--setup-evil-ediff-config ()
  "Set up personal configuation for evil-ediff.")

(defun jag--load-evil-ediff-requires ()
  "Load required sub packages for evil-ediff.")

(use-package evil-ediff
  :ensure t
  :config
  (jag--load-evil-ediff-requires)
  (jag--set-evil-ediff-key-bindings)
  (jag--setup-evil-ediff-config))

(provide 'init-evil-ediff)
;;; init-evil-ediff.el ends here
