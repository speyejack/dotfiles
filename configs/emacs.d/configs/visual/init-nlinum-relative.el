;;; init-nlinum-relative.el --- Displays-relative-line-numbers
;;; Commentary:

;;; Code:

(defun jag--set-nlinum-relative-key-bindings ()
  "Set up keybindings for nlinum-relative.")

(defun jag--setup-nlinum-relative-config ()
  "Set up personal configuation for nlinum-relative."
  (nlinum-relative-setup-evil)
  (add-hook 'prog-mode-hook 'nlinum-relative-mode))

(defun jag--load-nlinum-relative-requires ()
  "Load required sub packages for nlinum-relative.")

(use-package nlinum-relative
  :ensure t
  :config
  (jag--load-nlinum-relative-requires)
  (jag--set-nlinum-relative-key-bindings)
  (jag--setup-nlinum-relative-config))

(provide 'init-nlinum-relative)
;;; init-nlinum-relative.el ends here
