;;; jag-keys-project.el --- Project key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The project key bindings used throughout Emacs

;;; Code:

;; Create the project leader definer
(general-create-definer jag--project-leader-def
  :which-key "Project leader prefix"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " p")
  :global-prefix (concat jag-emacs-leader-key " p"))


(jag--project-leader-def
 "SPC" 'helm-projectile
 "f" 'helm-projectile-find-file
 "d" 'helm-projectile-find-dir
 "F" 'helm-projectile-find-file-dwim
 "r" 'helm-projectile-recentf
 "b" 'helm-projectile-switch-to-buffer
 "p" 'projectile-switch-project
 "s" 'helm-projectile-rg
 "a" 'helm-projectile-ag
 "g" 'helm-projectile-grep)


(provide 'jag-keys-project)

;;; jag-keys-project.el ends here
