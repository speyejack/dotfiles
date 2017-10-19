;;; init-org-pomodoro.el --- Adds-basic-time-tracking-software-to-org
;;; Commentary:

;;; Code:

(defun jag--add-org-pomodoro-hooks ()
  "Add hooks to org-pomodoro."
  (jag--add-org-pomodoro-key-hooks)
  (jag--add-org-pomodoro-other-hooks))

(defun jag--add-org-pomodoro-key-hooks ()
  "Add keyboard hooks to org-pomodoro.")

(defun jag--add-org-pomodoro-other-hooks ()
  "Add other hooks to org-pomodoro.")

(defun jag--set-org-pomodoro-key-bindings ()
  "Set up keybindings for org-pomodoro.")

(defun jag--setup-org-pomodoro-config ()
  "Set up personal configuation for org-pomodoro.")

(defun jag--load-org-pomodoro-requires ()
  "Load required sub packages for org-pomodoro.")

(use-package org-pomodoro
  :init
  (jag--load-org-pomodoro-requires)
  (jag--add-org-pomodoro-hooks)
  :ensure t
  :commands 'org-pomodoro
  :config
  (jag--set-org-pomodoro-key-bindings)
  (jag--setup-org-pomodoro-config))

(provide 'init-org-pomodoro)
;;; init-org-pomodoro.el ends here
