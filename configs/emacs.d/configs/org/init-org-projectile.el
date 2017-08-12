;;; init-org-projectile.el --- Adds org handling for projects
;;; Commentary:

;;; Code:

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
  :ensure t
  :config
  (jag--load-org-projectile-requires)
  (jag--set-org-projectile-key-bindings)
  (jag--setup-org-projectile-config))

(provide 'init-org-projectile)
;;; init-org-projectile.el ends here
