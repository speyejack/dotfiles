;;; init-restart-emacs.el --- Restarts-emacs.... duh
;;; Commentary:

;;; Code:

(defun jag--add-restart-emacs-hooks ()
  "Add hooks to restart-emacs."
  (jag--add-restart-emacs-key-hooks)
  (jag--add-restart-emacs-other-hooks))

(defun jag--add-restart-emacs-key-hooks ()
  "Add keyboard hooks to restart-emacs.")

(defun jag--add-restart-emacs-other-hooks ()
  "Add other hooks to restart-emacs.")

(defun jag--set-restart-emacs-key-bindings ()
  "Set up keybindings for restart-emacs.")

(defun jag--setup-restart-emacs-config ()
  "Set up personal configuation for restart-emacs.")

(defun jag--load-restart-emacs-requires ()
  "Load required sub packages for restart-emacs.")

(use-package restart-emacs
  :init
  (jag--load-restart-emacs-requires)
  (jag--add-restart-emacs-hooks)
  :ensure t
  :commands 'restart-emacs
  :config
  (jag--set-restart-emacs-key-bindings)
  (jag--setup-restart-emacs-config))

(provide 'init-restart-emacs)
;;; init-restart-emacs.el ends here
