;;; init-org.el --- Emacs-org-mode
;;; Commentary:

;;; Code:

(defun jag--set-org-key-bindings ()
  "Set up keybindings for org.")

(defun jag--setup-org-config ()
  "Set up personal configuation for org."
  (setq org-capture-templates
		'(("a" "My TODO task format." entry
		   (file "~/Dropbox/notes/afrl.org")
		   "* TODO %?
SCHEDULED: %t")))

  (defun my-org-task-capture ()
	"Capture a task with my default template."
	(interactive)
	(org-capture nil "a"))

  (setq org-agenda-files '("~/Dropbox/notes/"))
  (define-key global-map (kbd "C-c c") 'my-org-task-capture)
  (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
  (setq org-log-done (quote time)))

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
