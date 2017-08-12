;;; init-magit.el --- Emacs-git-interface
;;; Commentary:

;;; Code:

(defun jag--set-magit-key-bindings ()
  "Set up keybindings for magit.")

(defun jag--setup-magit-config ()
  "Set up personal configuation for magit.")

(defun jag--load-magit-requires ()
  "Load required sub packages for magit.")

(use-package magit
  :ensure t
  :config
  (jag--load-magit-requires)
  (jag--set-magit-key-bindings)
  (jag--setup-magit-config))

(provide 'init-magit)
;;; init-magit.el ends here
