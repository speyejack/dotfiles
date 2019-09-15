;;; jag-modes-org.el ---

;;; Commentary:

;;; Code:

;; org
;;
;; Emacs org mode
;;
;; Source: https://orgmode.org/

(use-package org
  :commands 'org-mode
  :diminish 'org-indent-mode
  :general
  (jag--leader-def
    "Q" '(jag--quick-org-task-capture :which-key "quick-task-capture"))
  (jag--local-leader-def
    :keymaps 'org-mode-map
    "t" 'org-babel-tangle
    "e" 'org-edit-special)
  (jag--local-leader-def
    :keymaps 'org-src-mode-map
    "e" 'org-edit-src-exit)
  :config
  (setq org-capture-templates
        '(("a" "My TODO task format." entry
           (file "~/Dropbox/notes/todos.org")
           "* TODO %?
      SCHEDULED: %t")))

  (defun jag--quick-org-task-capture ()
    "Capture a task with my default template."
    (interactive)
    (org-capture nil "a"))

  (setq org-startup-indented 1)
  (setq org-agenda-files '("~/Dropbox/notes/"))
  (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
  (setq org-log-done (quote time)))

;; org-bullets
;;
;; Show bullets in org-mode as UTF-8 characters
;;
;; Source: https://github.com/emacsorphanage/org-bullets

(use-package org-bullets
  :disabled t
  :commands 'org-mode
  :diminish
  :after org)

;; org-pomodoro
;;
;; Pomodoro implementation for org-mode.
;;
;; Source: https://github.com/lolownia/org-pomodoro

(use-package org-pomodoro
  :commands 'org-pomodoro
  :general
  (jag--local-leader-def
    :keymaps 'org-mode-map
    "p" 'org-pomodoro)
  :diminish
  :after org)

;; org-projectile
;;
;; Repository todo management for org-mode
;;
;; Source: https://github.com/IvanMalison/org-projectile

(use-package org-projectile
  :commands 'org-projectile-project-todo-entry
  :diminish
  :init
  (push (org-projectile-project-todo-entry) org-capture-templates)
  :general
  (jag--leader-def
    "Q" (lambda () (interactive) (org-capture nil "p")))
  :config
  (setq org-projectile-projects-file "~/Dropbox/notes/projects.org")
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files))))

;; evil-org
;;
;; evil keybindings for org-mode
;;
;; Source: https://github.com/Somelauw/evil-org-mode

(use-package evil-org
  :diminish
  :hook (org-mode . evil-org-mode)
  :config
  (evil-org-set-key-theme '(textobject insert navigation shift todo)))

(provide 'jag-modes-org)
;;; jag-modes-org.el ends here
