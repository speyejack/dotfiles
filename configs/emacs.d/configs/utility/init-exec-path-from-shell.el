;;; init-exec-path-from-shell.el --- Makes-the-ENV-variables-same-as-user-shell
;;; Commentary:

;;; Code:

(defun jag--set-exec-path-from-shell-key-bindings ()
  "Set up keybindings for exec-path-from-shell.")

(defun jag--setup-exec-path-from-shell-config ()
  "Set up personal configuation for exec-path-from-shell.")

(defun jag--load-exec-path-from-shell-requires ()
  "Load required sub packages for exec-path-from-shell.")

(use-package exec-path-from-shell
  :ensure t
  :config
  (jag--load-exec-path-from-shell-requires)
  (jag--set-exec-path-from-shell-key-bindings)
  (jag--setup-exec-path-from-shell-config))

(provide 'init-exec-path-from-shell)
;;; init-exec-path-from-shell.el ends here
