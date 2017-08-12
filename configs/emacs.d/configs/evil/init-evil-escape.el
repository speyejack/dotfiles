;;; init-evil-escape.el --- Define-an-escape-sequence-to-escape-from-most-buffers
;;; Commentary:

;;; Code:

(defun jag--set-evil-escape-key-bindings ()
  "Set up keybindings for evil-escape.")

(defun jag--setup-evil-escape-config ()
  "Set up personal configuation for evil-escape.")

(defun jag--load-evil-escape-requires ()
  "Load required sub packages for evil-escape.")

(use-package evil-escape
  :ensure t
  :config
  (jag--load-evil-escape-requires)
  (jag--set-evil-escape-key-bindings)
  (jag--setup-evil-escape-config))

(provide 'init-evil-escape)
;;; init-evil-escape.el ends here
