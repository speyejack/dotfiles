;;; init-evil-args.el --- Allows-manipulation-of-args-using-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-args-hooks ()
  "Add hooks to evil-args."
  (jag--add-evil-args-key-hooks)
  (jag--add-evil-args-other-hooks))

(defun jag--add-evil-args-key-hooks ()
  "Add keyboard hooks to evil-args.")

(defun jag--add-evil-args-other-hooks ()
  "Add other hooks to evil-args.")

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
  :init
  (jag--load-evil-args-requires)
  (jag--add-evil-args-hooks)
  :ensure t
  :config
  (jag--set-evil-args-key-bindings)
  (jag--setup-evil-args-config))

(provide 'init-evil-args)
;;; init-evil-args.el ends here