;;; init-org.el --- Emacs-org-mode
;;; Commentary:

;;; Code:

(defun jag--set-org-key-bindings ()
  "Set up keybindings for org.")

(defun jag--setup-org-config ()
  "Set up personal configuation for org.")

(defun jag--load-org-requires ()
  "Load required sub packages for org."
  (require 'init-org-bullets)
  (require 'init-org-pomodoro))

(use-package org
  :ensure t
  :config
  (jag--load-org-requires)
  (jag--set-org-key-bindings)
  (jag--setup-org-config))

(provide 'init-org)
;;; init-org.el ends here
