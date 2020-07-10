;;; jag-modes-org-agenda.el --- Config for mode org-agenda

;;; Commentary:

;;; Code:

(use-package jag-funcs-org-agenda
  :defer t
  :ensure nil)

(with-eval-after-load 'org-agenda
  (evil-set-initial-state 'org-agenda-mode 'motion)

  (which-key-declare-prefixes-for-mode 'org-agenda-mode "d" "delete")
  (which-key-declare-prefixes-for-mode 'org-agenda-mode "Z" "exit")
  (which-key-declare-prefixes-for-mode 'org-agenda-mode "s" "filter")
  (which-key-declare-prefixes-for-mode 'org-agenda-mode "c" "change/clock")

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

	"u" 'org-agenda-undo

	"d" nil
	"dd" 'org-agenda-kill
	"dA" 'org-agenda-archive
	"da" 'org-agenda-archive-default-with-confirmation

	"c" nil
	"ct" 'org-agenda-set-tags
	"ce" 'org-agenda-set-effort
	"cT" 'org-timer-set-timer

	"i" 'org-agenda-diary-entry
	"a" 'org-agenda-add-note
	"A" 'org-agenda-append-agenda
	"C" 'org-agenda-capture

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
	"." 'org-agenda-goto-today ; TODO: What about evil-repeat?
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
	"-" 'org-agenda-manipulate-query-subtract))

(provide 'jag-modes-org-agenda)
;;; jag-modes-org-agenda.el ends here
