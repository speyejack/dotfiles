;;; jag-modes-org-agenda.el --- Config for mode org-agenda

;;; Commentary:

;;; Code:

(use-package jag-funcs-org-agenda
  :defer t
  :commands (jag-agenda-list-filter
			 jag-agenda-planner-filter
			 jag-org-agenda-refile
			 jag-org-agenda-refile-all
			 jag-org-agenda-refile-inbox)
  :straight nil)

(with-eval-after-load 'org-agenda

  (setq org-deadline-warning-days 7
		jag-org-non-critical-deadline-tags '("event", "meeting"))

  (appt-activate t)
  (org-agenda-to-appt)
  (add-hook 'org-agenda-finalize-hook 'org-agenda-to-appt)


  (evil-set-initial-state 'org-agenda-mode 'motion)

  (jag-declare-prefix org-agenda-mode-map "d" "delete")
  (jag-declare-prefix org-agenda-mode-map "Z" "exit")
  (jag-declare-prefix org-agenda-mode-map "s" "filter")
  (jag-declare-prefix org-agenda-mode-map "c" "change/clock")

  (evil-define-key 'normal org-agenda-mode-map
	"q" nil)

  (evil-define-key 'motion org-agenda-mode-map
	(kbd "<tab>") 'org-agenda-goto
	(kbd "<return>") 'org-agenda-switch-to
	(kbd "S-<return>") 'org-agenda-goto
	(kbd "M-<return>") 'org-agenda-recenter

	(kbd "SPC") nil
	(kbd "<delete>") 'org-agenda-show-scroll-down
	(kbd "<sbackspace>") 'org-agenda-show-scroll-down

	"j" 'org-agenda-next-line
	"k" 'org-agenda-previous-line
	(kbd "M-j") 'org-agenda-next-item
	(kbd "M-k") 'org-agenda-previous-item
	(kbd "C-j") 'org-agenda-later
	(kbd "C-k") 'org-agenda-earlier

	"J" 'org-agenda-priority-down
	"K" 'org-agenda-priority-up
	"H" 'org-agenda-do-date-earlier
	"L" 'org-agenda-do-date-later
	"t" 'org-agenda-todo

	"r" 'jag-org-agenda-refile-inbox
	"R" 'jag-org-agenda-refile
	(kbd "C-r") 'jag-org-agenda-refile-all

	"u" 'org-agenda-undo

	"dd" 'org-agenda-kill
	"dA" 'org-agenda-archive
	"da" 'org-agenda-archive-default-with-confirmation

	"cs" 'org-agenda-schedule
	"cd" 'org-agenda-deadline
	"ct" 'org-agenda-set-tags
	"ce" 'org-agenda-set-effort
	"cT" 'org-timer-set-timer

	"i" 'org-agenda-diary-entry
	"a" 'org-agenda-add-note
	"A" 'org-agenda-append-agenda
	"C" 'org-agenda-capture
	"f" 'org-agenda-follow-mode

	"m" 'org-agenda-bulk-toggle
	"~" 'org-agenda-bulk-toggle-all
	"*" 'org-agenda-bulk-mark-all
	"%" 'org-agenda-bulk-mark-regexp
	"M" 'org-agenda-bulk-remove-all-marks
	"x" 'org-agenda-bulk-action

	"gr" 'org-agenda-redo
	"gR" 'org-agenda-redo-all

	"q" 'org-agenda-exit
	"Z" nil
	"ZQ" 'org-agenda-exit
	"ZZ" 'org-agenda-quit

	"sc" 'org-agenda-filter-by-category
	"sr" 'org-agenda-filter-by-regexp
	"se" 'org-agenda-filter-by-effort
	"st" 'org-agenda-filter-by-tag
	"s^" 'org-agenda-filter-by-top-headline
	"ss" 'org-agenda-limit-interactively
	"S" 'org-agenda-filter-remove-all

	;; clock
	"I" 'org-agenda-clock-in ; Original binding
	"O" 'org-agenda-clock-out ; Original binding
	"cg" 'org-agenda-clock-goto
	"cc" 'org-agenda-clock-cancel
	"cr" 'org-agenda-clockreport-mode


	;; go and show
	"." 'org-agenda-goto-today
	"gc" 'org-agenda-goto-calendar
	"gC" 'org-agenda-convert-date
	"gd" 'org-agenda-goto-date
	"gh" 'org-agenda-holidays
	"gm" 'org-agenda-phases-of-moon
	"gs" 'org-agenda-sunrise-sunset
	"gt" 'org-agenda-show-tags

	"p" 'org-agenda-date-prompt
	"P" 'org-agenda-show-the-flagging-note

	;; Others
	"+" 'org-agenda-manipulate-query-add
	"-" 'org-agenda-manipulate-query-subtract)

  (setq org-agenda-custom-commands
		'(("n" "Next Items"
		   ((todo ".*"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Inbox:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " ")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)
				   (org-agenda-files `(,jag-org-inbox-file))))
			(todo "NEXT"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Next items:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " %-15b")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)
				   (org-agenda-skip-scheduled-if-done t)))))

		  ("d" "Daily Items"
			((tags "@daily"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Tasks Today:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " %-15b")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)))

		   (todo ".*"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Inbox:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " ")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)
				   (org-agenda-files `(,jag-org-inbox-file))))))

		  ("a" "Daily Agenda"
		   ((todo ".*"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Inbox:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " ")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)
				   (org-agenda-files `(,jag-org-inbox-file))))

			(todo "TODO|NEXT"
				  ;; Reoccuring items that reoccur today
				  ;; action items
				  ((org-agenda-overriding-header "\n⚡ Due Today:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
				   (org-agenda-remove-tags t)
				   (org-agenda-prefix-format " %-15b")
				   (org-agenda-todo-keyword-format "")
				   (org-agenda-span 'day)
				   (org-agenda-skip-scheduled-if-done t)
				   (org-agenda-skip-function 'jag-agenda-list-filter)))

			(agenda ""
					((org-agenda-start-day "+0d")
					 (org-agenda-span 5)
					 (org-agenda-overriding-header "⚡ Schedule:\n⎺⎺⎺⎺⎺⎺⎺⎺⎺")
					 (org-agenda-repeating-timestamp-show-all nil)
					 (org-agenda-remove-tags t)
					 (org-agenda-prefix-format   "  %-15b %t%s")
					 (org-agenda-todo-keyword-format "")
					 (org-agenda-current-time-string "<┈┈┈┈┈┈┈ now")
					 (org-agenda-scheduled-leaders '("" ""))
					 (org-agenda-skip-deadline-prewarning-if-scheduled t)
					 (org-agenda-skip-function 'jag-agenda-planner-filter)
					 (org-agenda-time-grid (quote ((daily today remove-match)
												   (0900 1200 1500 1800 2100)
												   "      " "┈┈┈┈┈┈┈┈┈┈┈┈┈"))))))))))

(provide 'jag-modes-org-agenda)
;;; jag-modes-org-agenda.el ends here
