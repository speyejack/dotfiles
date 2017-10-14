;;; init-evil-escape.el --- Define-an-escape-sequence-to-escape-from-most-buffers
;;; Commentary:

;;; Code:

(defun jag--set-evil-escape-key-bindings ()
  "Set up keybindings for evil-escape."
  (setq-default evil-escape-key-sequence "jk"))

(defun jag--setup-evil-escape-config ()
  "Set up personal configuation for evil-escape."
  (setq evil-escape-unordered-key-sequence 1)
  (evil-escape-mode 1))

(defun jag--load-evil-escape-requires ()
  "Load required sub packages for evil-escape.")

(use-package evil-escape
  :ensure t
  :after evil
  :diminish 'evil-escape-mode
  :config
  (jag--load-evil-escape-requires)
  (jag--set-evil-escape-key-bindings)
  (jag--setup-evil-escape-config))

(provide 'init-evil-escape)
;;; init-evil-escape.el ends here
