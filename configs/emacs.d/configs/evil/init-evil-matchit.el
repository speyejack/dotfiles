;;; init-evil-matchit.el --- Advance-matching-for-%-key
;;; Commentary:

;;; Code:

(defun jag--set-evil-matchit-key-bindings ()
  "Set up keybindings for evil-matchit.")

(defun jag--setup-evil-matchit-config ()
  "Set up personal configuation for evil-matchit."
  (global-evil-matchit-mode 1))

(defun jag--load-evil-matchit-requires ()
  "Load required sub packages for evil-matchit.")

(use-package evil-matchit
  :ensure t
  :config
  (jag--load-evil-matchit-requires)
  (jag--set-evil-matchit-key-bindings)
  (jag--setup-evil-matchit-config))

(provide 'init-evil-matchit)
;;; init-evil-matchit.el ends here
