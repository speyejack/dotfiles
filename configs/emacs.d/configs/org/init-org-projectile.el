;;; init-org-projectile.el --- Adds org handling for projects
;;; Commentary:

;;; Code:

(defun jag--add-org-projectile-hooks ()
  "Add hooks to org-projectile."
  (jag--add-org-projectile-key-hooks)
  (jag--add-org-projectile-other-hooks))

(defun jag--add-org-projectile-key-hooks ()
  "Add key hooks to org-projectile.")

(defun jag--add-org-projectile-other-hooks ()
  "Add mode other to org-projectile.")

(defun jag--set-org-projectile-key-bindings ()
  "Set up keybindings for org-projectile."
  (define-key global-map (kbd "C-c n p") 'org-projectile-project-todo-completing-read))

(defun jag--setup-org-projectile-config ()
  "Set up personal configuation for org-projectile."
  (setq org-projectile-projects-file "~/Dropbox/notes/projects.org")
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
  (push (org-projectile-project-todo-entry) org-capture-templates))

(defun jag--load-org-projectile-requires ()
  "Load required sub packages for org-projectile.")

(use-package org-projectile
  :init
  (jag--load-org-projectile-requires)
  (jag--add-org-projectile-hooks)
  :ensure t
  :config
  (jag--set-org-projectile-key-bindings)
  (jag--setup-org-projectile-config))

(provide 'init-org-projectile)
;;; init-org-projectile.el ends here