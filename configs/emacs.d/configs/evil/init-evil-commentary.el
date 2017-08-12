;;; init-evil-commentary.el --- Allows-for-quick-commenting
;;; Commentary:

;;; Code:

(defun jag--set-evil-commentary-key-bindings ()
  "Set up keybindings for evil-commentary.")

(defun jag--setup-evil-commentary-config ()
  "Set up personal configuation for evil-commentary.")

(defun jag--load-evil-commentary-requires ()
  "Load required sub packages for evil-commentary.")

(use-package evil-commentary
  :ensure t
  :config
  (jag--load-evil-commentary-requires)
  (jag--set-evil-commentary-key-bindings)
  (jag--setup-evil-commentary-config))

(provide 'init-evil-commentary)
;;; init-evil-commentary.el ends here
