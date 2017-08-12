;;; init-restart-emacs.el --- Restarts-emacs.... duh
;;; Commentary:

;;; Code:

(defun jag--set-restart-emacs-key-bindings ()
  "Set up keybindings for restart-emacs.")

(defun jag--setup-restart-emacs-config ()
  "Set up personal configuation for restart-emacs.")

(defun jag--load-restart-emacs-requires ()
  "Load required sub packages for restart-emacs.")

(use-package restart-emacs
  :ensure t
  :config
  (jag--load-restart-emacs-requires)
  (jag--set-restart-emacs-key-bindings)
  (jag--setup-restart-emacs-config))

(provide 'init-restart-emacs)
;;; init-restart-emacs.el ends here
