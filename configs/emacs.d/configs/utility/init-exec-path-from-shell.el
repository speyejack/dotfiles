;;; init-exec-path-from-shell.el --- Makes-the-ENV-variables-same-as-user-shell
;;; Commentary:

;;; Code:

(defun jag--add-exec-path-from-shell-hooks ()
  "Add hooks to exec-path-from-shell."
  (jag--add-exec-path-from-shell-key-hooks)
  (jag--add-exec-path-from-shell-other-hooks))

(defun jag--add-exec-path-from-shell-key-hooks ()
  "Add keyboard hooks to exec-path-from-shell.")

(defun jag--add-exec-path-from-shell-other-hooks ()
  "Add other hooks to exec-path-from-shell.")

(defun jag--set-exec-path-from-shell-key-bindings ()
  "Set up keybindings for exec-path-from-shell.")

(defun jag--setup-exec-path-from-shell-config ()
  "Set up personal configuation for exec-path-from-shell.")

(defun jag--load-exec-path-from-shell-requires ()
  "Load required sub packages for exec-path-from-shell.")

(use-package exec-path-from-shell
  :init
  (jag--load-exec-path-from-shell-requires)
  (jag--add-exec-path-from-shell-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-exec-path-from-shell-key-bindings)
  (jag--setup-exec-path-from-shell-config))

(provide 'init-exec-path-from-shell)
;;; init-exec-path-from-shell.el ends here
