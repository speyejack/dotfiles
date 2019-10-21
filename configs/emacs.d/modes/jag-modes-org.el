;;; jag-modes-org.el ---

;;; Commentary:

;;; Code:

;; org
;;
;; Emacs org mode
;;
;; Source: https://orgmode.org/
(jag--local-leader-def
  :keymaps 'org-mode-map
  "'" 'org-edit-special
  "c" 'org-capture
  "d" 'org-deadline
  "D" 'org-insert-drawer
  "ee" 'org-export-dispatch
  "f" 'org-set-effort
  "P" 'org-set-property
  ":" 'org-set-tags

  "a" 'org-agenda
  "b" 'org-tree-to-indirect-buffer
  "A" 'org-archive-subtree
  "l" 'org-open-at-point
  "T" 'org-show-todo-tree

  "." 'org-time-stamp
  "!" 'org-time-stamp-inactive

  ;; headings
  "h" '(nil :wk "headings")
  "hi" 'org-insert-heading-after-current
  "hI" 'org-insert-heading
  "hs" 'org-insert-subheading

  ;; More cycling options (timestamps, headlines, items, properties)
  "L" 'org-shiftright
  "H" 'org-shiftleft
  "J" 'org-shiftdown
  "K" 'org-shiftup

  ;; Change between TODO sets
  "C-S-l" 'org-shiftcontrolright
  "C-S-h" 'org-shiftcontrolleft
  "C-S-j" 'org-shiftcontroldown
  "C-S-k" 'org-shiftcontrolup

  ;; Subtree editing
  "S" '(nil :wk "subtree")
  "Sl" 'org-demote-subtree
  "Sh" 'org-promote-subtree
  "Sj" 'org-move-subtree-down
  "Sk" 'org-move-subtree-up

  ;; tables
  "t" '(nil :wk "tables")
  "ta" 'org-table-align
  "tb" 'org-table-blank-field
  "tc" 'org-table-convert
  "tdc" 'org-table-delete-column
  "tdr" 'org-table-kill-row
  "te" 'org-table-eval-formula
  "tE" 'org-table-export
  "th" 'org-table-previous-field
  "tH" 'org-table-move-column-left
  "tic" 'org-table-insert-column
  "tih" 'org-table-insert-hline
  "tiH" 'org-table-hline-and-move
  "tir" 'org-table-insert-row
  "tI" 'org-table-import
  "tj" 'org-table-next-row
  "tJ" 'org-table-move-row-down
  "tK" 'org-table-move-row-up
  "tl" 'org-table-next-field
  "tL" 'org-table-move-column-right
  "tn" 'org-table-create
  "tN" 'org-table-create-with-table.el
  "tr" 'org-table-recalculate
  "ts" 'org-table-sort-lines
  "ttf" 'org-table-toggle-formula-debugger
  "tto" 'org-table-toggle-coordinate-overlays
  "tw" 'org-table-wrap-region

  ;; Multi-purpose keys

  "," 'org-ctrl-c-ctrl-c
  "*" 'org-ctrl-c-star
  "RET" 'org-ctrl-c-ret
  "-" 'org-ctrl-c-minus
  "^" 'org-sort
  "/" 'org-sparse-tree

  "I" 'org-clock-in
  "n" 'org-narrow-to-subtree
  "N" 'widen
  "O" 'org-clock-out
  "q" 'org-clock-cancel
  "R" 'org-refile
  "s" 'org-schedule

  ;; insertion of common elements
  "i" '(nil :wk "insertion")
  "ia" 'org-attach
  "il" 'org-insert-link
  "if" 'org-footnote-new
  "iL" 'org-ref-helm-insert-label-link
  "ir" 'org-ref-helm-insert-ref-link
  "ic" 'org-ref-helm-insert-cite-link)

(use-package org
  :commands 'org-mode
  :diminish 'org-indent-mode
  :general
  (jag--leader-def
    "Q" '(jag--quick-org-task-capture :which-key "quick-task-capture"))
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
  (setq org-log-done (quote time))
  (setq org-checkbox-hierarchical-statistics nil))

;; org-bullets
;;
;; Show bullets in org-mode as UTF-8 characters
;;
;; Source: https://github.com/emacsorphanage/org-bullets

(use-package org-bullets
  :disabled t
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

;; org-ref
;;
;; Allow citations within org more
;;
;; Source: https://github.com/jkitchin/org-ref

(use-package org-ref
  :commands (org)
  :after (org-ref-helm-insert-label-link org-ref-helm-insert-ref-link org-ref-helm-insert-cite-link))

(provide 'jag-modes-org)
;;; jag-modes-org.el ends here
