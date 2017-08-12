;;; init-gnus.el --- Reading-email-from-emacs
;;; Commentary:

;;; Code:

(defun jag--set-gnus-key-bindings ()
  "Set up keybindings for gnus.")

(defun jag--setup-gnus-config ()
  "Set up personal configuation for gnus.")

(defun jag--load-gnus-requires ()
  "Load required sub packages for gnus.")

(use-package gnus
  :ensure t
  :config
  (jag--load-gnus-requires)
  (jag--set-gnus-key-bindings)
  (jag--setup-gnus-config))

(provide 'init-gnus)
;;; init-gnus.el ends here
