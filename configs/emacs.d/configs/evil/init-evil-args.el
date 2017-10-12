;;; init-evil-args.el --- Allows-manipulation-of-args-using-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-args-key-bindings ()
  "Set up keybindings for evil-args."
  ;; bind evil-args text objects
  (define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
  (define-key evil-outer-text-objects-map "A" 'evil-outer-arg))

(defun jag--setup-evil-args-config ()
  "Set up personal configuation for evil-args.")

(defun jag--load-evil-args-requires ()
  "Load required sub packages for evil-args.")

(use-package evil-args
  :ensure t
  :config
  (jag--load-evil-args-requires)
  (jag--set-evil-args-key-bindings)
  (jag--setup-evil-args-config))

(provide 'init-evil-args)
;;; init-evil-args.el ends here
