;;; jag-modes-org.el --- Configuration for emacs's org mode

;;; Commentary:

;;; Code:

(jag-declare-prefix-for-mode 'org-mode "mh" "headings")
(jag-declare-prefix-for-mode 'org-mode "mS" "subtree")
(jag-declare-prefix-for-mode 'org-mode "mi" "insertion")
(jag-declare-prefix-for-mode 'org-mode "mt" "tables")
(jag-define-leader-keys-for-major-mode
  'org-mode

  "'" 'org-edit-special
  "c" 'org-capture
  "d" 'org-deadline
  "D" 'org-insert-drawer
  "e" 'org-export-dispatch
  "f" 'org-set-effort
  "p" 'org-pomodoro
  "P" 'org-set-property
  ":" 'org-set-tags

  "a" 'org-archive-subtree
  "b" 'org-tree-to-indirect-buffer
  "A" 'jag-org-archive-done-tasks
  "l" 'org-open-at-point
  "T" 'org-show-todo-tree

  "." 'org-time-stamp
  "!" 'org-time-stamp-inactive

  ;; headings
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
  "Sl" 'org-demote-subtree
  "Sh" 'org-promote-subtree
  "Sj" 'org-move-subtree-down
  "Sk" 'org-move-subtree-up

  ;; tables
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
  "t?" 'org-table-field-info

  ;; Multi-purpose keys

  "m" 'org-ctrl-c-ctrl-c
  "," 'org-ctrl-c-ctrl-c
  "*" 'org-ctrl-c-star
  "RET" 'org-ctrl-c-ret
  "-" 'org-ctrl-c-minus
  "^" 'org-sort
  "/" 'org-sparse-tree

  "I" 'org-clock-in
  "n" 'org-narrow-to-subtree
  "N" 'widen
  "o" 'org-latex-preview
  "O" 'org-clock-out
  "q" 'org-clock-cancel
  "r" 'org-refile
  "s" 'org-schedule
  "u" 'org-toggle-inline-images

  ;; insertion of common elements
  "it" 'org-insert-structure-template
  "ia" 'org-attach
  "il" 'org-insert-link
  "if" 'org-footnote-new
  "iL" 'org-ref-helm-insert-label-link
  "ir" 'org-ref-helm-insert-ref-link
  "ic" 'org-ref-helm-insert-cite-link)

(use-package jag-funcs-org
  :ensure nil
  :commands (jag-fix-org-pdf
			 jag-org-open-heading-after-current
			 jag-org-open-heading
			 jag-org-archive-done-tasks))

;; org
;;
;; Emacs org mode
;;
;; Source: https://orgmode.org/
(use-package org
  :defer t
  :commands (org-mode org-capture)
  :diminish 'org-indent-mode
  :config
  (evil-define-key 'normal org-mode-map
	(kbd "M-h") 'org-up-element
	(kbd "M-j") 'org-forward-element
	(kbd "M-k") 'org-backward-element
	(kbd "M-l") 'org-down-element

	(kbd "M-H") 'org-promote-subtree
	(kbd "M-J") 'org-move-subtree-down
	(kbd "M-K") 'org-move-subtree-up
	(kbd "M-L") 'org-demote-subtree

	(kbd "C-M-H") 'org-do-promote
	(kbd "C-M-L") 'org-do-demote

	(kbd "M-o") 'jag-org-open-heading-after-current
	(kbd "M-O") 'jag-org-open-heading)

  (let ((inbox-file (expand-file-name "inbox.org" jag-gtd-dir))
		(gtd-file (expand-file-name "gtd.org" jag-gtd-dir))
		(someday-file (expand-file-name "someday.org" jag-gtd-dir))
		(tickler-file (expand-file-name "tickler.org" jag-gtd-dir))
		(clocks-file (expand-file-name "clocks.org" jag-gtd-dir))
		(archive-folder (expand-file-name "archive" jag-gtd-dir)))

	(if (not (file-exists-p jag-gtd-dir))
		(progn
		  (make-directory jag-gtd-dir t)
		  (make-directory (expand-file-name "references" jag-gtd-dir))
		  (make-directory archive-folder)
		  (write-region "" "" inbox-file t)
		  (write-region "" "" gtd-file t)
		  (write-region "" "" someday-file t)
		  (write-region "" "" tickler-file t)
		  (write-region "" "" clocks-file t)))

	(setq org-capture-templates
		  `(("t" "Todo [inbox]" entry
			 (file+headline ,inbox-file "Tasks")
			 "* TODO %i%?\n")

			("h" "Todo here [inbox]" entry
			 (file+headline ,inbox-file "Tasks")
			 "* TODO %i%?\n  %a\n")

			("d" "Due [inbox]" entry
			 (file+headline ,inbox-file "Due")
			 "* TODO %i%?\n  DEADLINE: %^{Due Date}t\n")

			("s" "Schedule [inbox]" entry
			 (file+headline ,tickler-file "Reminders")
			 "* %i%?\n  Schedule: %^{Schedule Date}t\n")

			("c" "Clock-in" entry
			 (file+olp+datetree ,clocks-file "Clocks")
			 "* %i%?\n" :clock-in t :clock-keep t)))


	(setq org-refile-targets
		  `((,gtd-file :maxlevel . 2)
			(,tickler-file :maxlevel . 2)
			(,someday-file :maxlevel . 2)))

	(setq org-agenda-files
		  `(,inbox-file ,gtd-file ,tickler-file))

	(setq org-archive-location (expand-file-name "archive_%s::" archive-folder)))

  (setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))
  (setq org-todo-keyword-faces '(("WAITING" . "sky blue") ("CANCELLED" . "forest green")))
  (setq org-startup-indented 1)
  (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
  (setq org-export-with-section-numbers nil)
  (setq org-export-with-toc nil)
  (add-hook 'org-export-before-parsing-hook (lambda (x) (untabify (point-min) (point-max))))
  (add-hook 'org-capture-mode-hook (lambda () (evil-append-line 1)))
  (setq org-log-done (quote time))
  (setq org-checkbox-hierarchical-statistics nil)
  (require 'jag-modes-org-babel))

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
  :diminish
  :after org)

;; org-projectile
;;
;; Repository todo management for org-mode
;;
;; Source: https://github.com/IvanMalison/org-projectile

(use-package org-projectile
  :commands 'org-projectile-capture-for-current-project
  :diminish
  :config
  (push (org-projectile-project-todo-entry) org-capture-templates)
  (setq org-projectile-projects-file
		  (expand-file-name "gtd.org" jag-gtd-dir))
  (setq org-projectile-capture-template
		"* TODO %i%?\n  %a\n"))

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

;; org-reveal
;;
;; Org-Reveal exports your Org documents to reveal.js presentations.
;;
;; Source: https://github.com/yjwen/org-reveal/

(use-package org-re-reveal
  :commands (org-re-reveal-export-to-html org-re-reveal-export-to-html-and-browse)
  :after (org))

(provide 'jag-modes-org)
;;; jag-modes-org.el ends here
