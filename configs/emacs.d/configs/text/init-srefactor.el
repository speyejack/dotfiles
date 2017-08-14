;;; init-srefactor.el --- Refactoring-tool
;;; Commentary:

;;; Code:

(defun jag--set-srefactor-key-bindings ()
  "Set up keybindings for srefactor."
  (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  (global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
  (global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
  (global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
  (global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer))

(defun jag--setup-srefactor-config ()
  "Set up personal configuation for srefactor.")

(defun jag--load-srefactor-requires ()
  "Load required sub packages for srefactor.")

(use-package srefactor
  :ensure t
  :config
  (jag--load-srefactor-requires)
  (jag--set-srefactor-key-bindings)
  (jag--setup-srefactor-config))

(provide 'init-srefactor)
;;; init-srefactor.el ends here