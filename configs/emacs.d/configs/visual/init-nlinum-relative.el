;;; init-nlinum-relative.el --- Displays-relative-line-numbers
;;; Commentary:

;;; Code:

(defun jag--add-nlinum-relative-hooks ()
  "Add hooks to nlinum-relative."
  (jag--add-nlinum-relative-key-hooks)
  (jag--add-nlinum-relative-other-hooks))

(defun jag--add-nlinum-relative-key-hooks ()
  "Add keyboard hooks to nlinum-relative.")

(defun jag--add-nlinum-relative-other-hooks ()
  "Add other hooks to nlinum-relative.")

(defun jag--set-nlinum-relative-key-bindings ()
  "Set up keybindings for nlinum-relative.")

(defun jag--setup-nlinum-relative-config ()
  "Set up personal configuation for nlinum-relative."
  (nlinum-relative-setup-evil)
  (add-hook 'prog-mode-hook 'nlinum-relative-mode))

(defun jag--load-nlinum-relative-requires ()
  "Load required sub packages for nlinum-relative.")

(use-package nlinum-relative
  :init
  (jag--load-nlinum-relative-requires)
  (jag--add-nlinum-relative-hooks)
  :ensure t
  :config
  (jag--set-nlinum-relative-key-bindings)
  (jag--setup-nlinum-relative-config))

(provide 'init-nlinum-relative)
;;; init-nlinum-relative.el ends here