;;; init-projectile.el --- Package description
;;; Commentary:

;;; Code:
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)

  (use-package helm-projectile
	:ensure t
	:config
	(require 'helm-projectile)
	(helm-projectile-on))

  (use-package org-projectile
	:bind (("C-c n p" . org-projectile-project-todo-completing-read)
           ("C-c c" . org-capture))
	:config
	(progn
      (setq org-projectile-projects-file
			"~/Dropbox/notes/projects.org")
      (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
      (push (org-projectile-project-todo-entry) org-capture-templates))
	:ensure t)
  )

(provide 'init-projectile)
;;; init-projectile.el ends here
