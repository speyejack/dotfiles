;;; init-org-pomodoro.el --- Adds-basic-time-tracking-software-to-org
;;; Commentary:

;;; Code:

(defun jag--set-org-pomodoro-key-bindings ()
  "Set up keybindings for org-pomodoro.")

(defun jag--setup-org-pomodoro-config ()
  "Set up personal configuation for org-pomodoro.")

(defun jag--load-org-pomodoro-requires ()
  "Load required sub packages for org-pomodoro.")

(use-package org-pomodoro
  :ensure t
  :config
  (jag--load-org-pomodoro-requires)
  (jag--set-org-pomodoro-key-bindings)
  (jag--setup-org-pomodoro-config))

(provide 'init-org-pomodoro)
;;; init-org-pomodoro.el ends here
