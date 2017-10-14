;;; init-evil-escape.el --- Define-an-escape-sequence-to-escape-from-most-buffers
;;; Commentary:

;;; Code:

(defun jag--add-evil-escape-hooks ()
  "Add hooks to evil-escape."
  (jag--add-evil-escape-key-hooks)
  (jag--add-evil-escape-other-hooks))

(defun jag--add-evil-escape-key-hooks ()
  "Add key hooks to evil-escape.")

(defun jag--add-evil-escape-other-hooks ()
  "Add mode other to evil-escape.")

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
  :init
  (jag--load-evil-escape-requires)
  (jag--add-evil-escape-hooks)
  :ensure t
  :diminish 'evil-escape-mode
  :config
  (jag--set-evil-escape-key-bindings)
  (jag--setup-evil-escape-config))

(provide 'init-evil-escape)
;;; init-evil-escape.el ends here