;;; init-gnus.el --- Reading-email-from-emacs
;;; Commentary:

;;; Code:

(defun jag--add-gnus-hooks ()
  "Add hooks to gnus."
  (jag--add-gnus-key-hooks)
  (jag--add-gnus-other-hooks))

(defun jag--add-gnus-key-hooks ()
  "Add key hooks to gnus.")

(defun jag--add-gnus-other-hooks ()
  "Add mode other to gnus.")

(defun jag--set-gnus-key-bindings ()
  "Set up keybindings for gnus.")

(defun jag--setup-gnus-config ()
  "Set up personal configuation for gnus.")

(defun jag--load-gnus-requires ()
  "Load required sub packages for gnus.")

(use-package gnus
  :init
  (jag--load-gnus-requires)
  (jag--add-gnus-hooks)
  :ensure t
  :config
  (jag--set-gnus-key-bindings)
  (jag--setup-gnus-config))

(provide 'init-gnus)
;;; init-gnus.el ends here