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
  "e" 'org-export-dispatch
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
  :defer t
  :commands (org-mode org-capture)
  :diminish 'org-indent-mode
  :config
  (let ((inbox-file (expand-file-name "inbox.org" jag-gtd-dir))
		(gtd-file (expand-file-name "gtd.org" jag-gtd-dir))
		(someday-file (expand-file-name "someday.org" jag-gtd-dir))
		(tickler-file (expand-file-name "tickler.org" jag-gtd-dir)))

	(if (not (file-exists-p jag-gtd-dir))
		(progn
		  (make-directory jag-gtd-dir t)
		  (make-directory (expand-file-name "references" jag-gtd-dir))
		  (write-region "" "" inbox-file t)
		  (write-region "" "" gtd-file t)
		  (write-region "" "" someday-file t)
		  (write-region "" "" tickler-file t)))

	(setq org-capture-templates
		  `(("t" "Todo [inbox]" entry
			 (file+headline ,inbox-file "Tasks")
			 "* TODO %i%?")))

	(setq org-refile-targets
		  `((,gtd-file :maxlevel . 2)
			(,tickler-file :maxlevel . 2)
			(,someday-file :maxlevel . 2)))

	(setq org-agenda-files
		  `(,inbox-file ,gtd-file ,tickler-file)))

  (setq org-startup-indented 1)
  (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
  (setq org-log-done (quote time))
  (setq org-checkbox-hierarchical-statistics nil)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
	 (python . t))))

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
  :config
  (setq org-projectile-projects-file
		  (expand-file-name "gtd.org" jag-notes-dir))
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
  :commands (org-ref-helm-insert-label-link org-ref-helm-insert-ref-link org-ref-helm-insert-cite-link)
  :after (org))


(provide 'jag-modes-org)
;;; jag-modes-org.el ends here
