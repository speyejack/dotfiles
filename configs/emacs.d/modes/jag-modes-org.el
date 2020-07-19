;;; jag-modes-org.el --- Configuration for emacs's org mode

;;; Commentary:

;;; Code:

(jag-declare-prefix-for-mode 'org-mode "h" "headings")
(jag-declare-prefix-for-mode 'org-mode "S" "subtree")
(jag-declare-prefix-for-mode 'org-mode "i" "insertion")
(jag-declare-prefix-for-mode 'org-mode "t" "tables")
(jag-declare-prefix-for-mode 'org-mode "ti" "insert")
(jag-declare-prefix-for-mode 'org-mode "tt" "toggle")
(jag-declare-prefix-for-mode 'org-mode "td" "delete")
(jag-define-leader-keys-for-major-mode
  'org-mode

  "'" 'org-edit-special
  "y" 'org-copy-special
  "x" 'org-cut-special
  "p" 'org-cut-special
  "c" 'org-capture
  "d" 'org-deadline
  "D" 'org-insert-drawer
  "e" 'org-export-dispatch
  "f" 'org-set-effort
  "P" 'org-pomodoro
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
  "tg" 'orgtbl-ascii-plot
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
  "tn" 'org-table-create-or-convert-from-region
  "tN" 'org-table-create-with-table.el
  "tr" 'org-table-recalculate
  "tR" 'org-table-recalculate-buffer-tables
  "ts" 'org-table-sort-lines
  "tT" 'org-table-transpose-table-at-point
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
  "o" 'org-toggle-inline-images
  "O" 'org-clock-out
  "q" 'org-clock-cancel
  "r" 'jag-org-refile
  "R" 'jag-org-refile-all
  "s" 'org-schedule
  "u" 'org-latex-preview
  "U" 'jag-scale-latex
  "g" 'org-plot/gnuplot
  "G" 'org-goto

  ;; insertion of common elements
  "it" 'org-insert-structure-template
  "iu" 'org-cliplink
  "ia" 'org-attach
  "is" 'org-download-screenshot
  "iy" 'org-download-yank
  "il" 'org-insert-link
  "if" 'org-footnote-new
  "ik" 'org-roam-insert
  "in" 'org-add-note
  "iL" 'org-ref-helm-insert-label-link
  "ir" 'org-ref-helm-insert-ref-link
  "ic" 'org-ref-helm-insert-cite-link
  "ip" 'org-set-property)

(use-package jag-funcs-org
  :ensure nil
  :commands (jag-fix-org-pdf
			 jag-org-open-heading-after-current
			 jag-org-open-heading
			 jag-org-archive-done-tasks
			 jag-scale-latex
			 jag-org-clock-file
			 jag-org-journal-find-location
			 jag-org-refile
			 jag-org-refile-all
			 jag-org-ref-doi-from-url))

;; org
;;
;; Emacs org mode
;;
;; Source: https://orgmode.org/
(use-package org
  :defer t
  :commands (org-mode org-capture org-refile-get-location)
  :diminish 'org-indent-mode
  :config
  (evil-define-key 'normal org-mode-map
	(kbd "gh")  'evil-beginning-of-visual-line
	(kbd "gl")  'evil-end-of-visual-line
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
	(kbd "RET") 'evil-org-return
	(kbd "M-O") 'jag-org-open-heading)

  (evil-define-key '(motion insert) org-mode-map
	(kbd "M-RET") 'org-return
	(kbd "RET") 'evil-org-return)

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

			("v" "Clock-in entry" entry
			 (file+olp+datetree ,clocks-file "Clocks")
			 "* %a\n  %i%?\n" :clock-in t :clock-keep t)

			("d" "Due [inbox]" entry
			 (file+headline ,inbox-file "Due")
			 "* TODO %i%?\n  DEADLINE: %^{Due Date}t\n")

			("s" "Schedule [inbox]" entry
			 (file+headline ,tickler-file "Reminders")
			 "* TODO %i%?\n  SCHEDULED: %^{Schedule Date}t\n")

			("i" "Interrupt" entry
			 (file+olp+datetree ,clocks-file "Clocks")
			 "* Interrupt: %i%?\n" :clock-resume t :clock-keep nil :clock-in t)

			("c" "Clock-in" entry
			 (file+olp+datetree ,clocks-file "Clocks")
			 "* %i%?\n" :clock-in t :clock-keep t)

			("j" "Journal entry" entry
			 (function jag-org-journal-find-location)
			 "** %(format-time-string org-journal-time-format)%i%?\n")))

	(add-hook 'org-clock-in-hook #'org-save-all-org-buffers)
	(add-hook 'org-clock-out-hook #'org-save-all-org-buffers)
	(advice-add 'org-archive-subtree :after #'org-save-all-org-buffers)

	(setq org-refile-targets
		  '((nil :maxlevel . 3)))

	(setq jag-org-refile-files
		  `(,gtd-file
			,tickler-file
			,inbox-file
			,clocks-file
			,someday-file))

	(setq jag-org-refile-min-targets
		  `((,gtd-file :maxlevel . 3)
			(,tickler-file :maxlevel . 3)
			(,someday-file :maxlevel . 3)))

	(setq jag-org-refile-max-targets
		  `((,gtd-file :maxlevel . 3)
			(,tickler-file :maxlevel . 3)
			(,someday-file :maxlevel . 3)))

	(setq org-tag-alist '(("@errand" . ?e)
						  ("@work" . ?o)
						  ("@home" . ?h)
						  ("@school" . ?s)
						  (:newline)
						  ("WAITING" . ?w)
						  ("HOLD" . ?H)
						  ("CANCELLED" . ?c)))

	(setq jag-org-inbox-file
		  inbox-file)

	(setq org-agenda-files
		  `(,inbox-file ,gtd-file ,tickler-file))

	(setq org-archive-location (expand-file-name "archive_%s::" archive-folder)))

  (setq-default org-format-latex-options (plist-put org-format-latex-options :scale 1.25))

  (setq org-todo-keywords
		'((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
		  (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" )))
  (setq org-todo-keyword-faces '(("NEXT" . "tan") ("WAITING" . "sky blue") ("CANCELLED" . "forest green") ("HOLD" . "yellow green")))

  (setq org-startup-indented 1)
  (setq org-list-allow-alphabetical t)
  (setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
  (setq org-export-with-section-numbers nil)
  (setq org-export-with-toc nil)
  (setq org-image-actual-width nil)
  (add-hook 'org-export-before-parsing-hook (lambda (x) (untabify (point-min) (point-max))))
  (add-hook 'org-capture-mode-hook (lambda () (evil-append-line 1)))
  (setq org-log-done (quote time))
  (setq org-checkbox-hierarchical-statistics nil)
  (setq org-return-follows-link t)
  (setq org-clock-out-remove-zero-time-clocks t)
  (setq org-clock-idle-time 5)


  (with-eval-after-load "ox-latex"
	(add-to-list 'org-latex-classes
				 '("IEEEtran" "\\documentclass[10pt,conference,compsocconf]{IEEEtran}"
				   ("\\section{%s}" . "\\section*{%s}")
				   ("\\subsection{%s}" . "\\subsection*{%s}")
				   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
				   ("\\paragraph{%s}" . "\\paragraph*{%s}")
				   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

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
  :commands (org-ref-helm-insert-label-link
			 org-ref-helm-insert-ref-link
			 org-ref-helm-insert-cite-link
			 doi-add-bibtex-entry)
  :after (org)
  :config
  (let ((bib-notes-file (expand-file-name "notes.bib" jag-notes-bibliography-dir))
		(bib-reference-file (expand-file-name "references.bib" jag-notes-bibliography-dir))
		(bib-pdf-download "~/Downloads/papers")
		(helm-bib-notes (expand-file-name "helm-bibtex-notes" jag-notes-bibliography-dir)))

	(if (not (file-exists-p jag-notes-bibliography-dir))
		(progn
		  (make-directory jag-notes-bibliography-dir t)
		  (make-directory helm-bib-notes)))

	(if (not (file-exists-p bib-pdf-download))
		(progn
		  (make-directory bib-pdf-download)))

	(setq reftex-default-bibliography bib-reference-file)

	(setq org-ref-bibliography-notes  bib-notes-file
		  org-ref-default-bibliography `(,bib-reference-file)
		  org-ref-pdf-directory bib-pdf-download)

	(setq bibtex-completion-bibliography bib-reference-file
		  bibtex-completion-library-path bib-pdf-download
		  bibtex-completion-notes-path helm-bib-notes)))

;; org-journal
;;
;; A simple org-mode based journaling mode
;;
;; Source: https://github.com/bastibe/org-journal
(use-package org-journal
  :commands 'org-journal-new-entry
  :custom
  (org-journal-dir jag-notes-library-dir)
  (org-journal-date-prefix "#+TITLE: ")
  (org-journal-file-format "%Y-%m-%d.org")
  (org-journal-date-format "%A, %B %d %Y"))

;; org-roam
;;
;; Rudimentary Roam replica with Org-mode
;;
;; Source: https://github.com/jethrokuan/org-roam
(use-package org-roam
  :commands (org-roam org-roam-find-file org-roam-show-graph org-roam-insert)
  :diminish
  :custom
  (org-roam-directory jag-notes-library-dir)
  :config
  (org-roam-mode 1))

;; org-download
;;
;; Drag and drop images to Emacs org-mode
;;
;; Source: https://github.com/abo-abo/org-download
(use-package org-download
  :commands (org-download-yank org-download-screenshot org-download-enable)
  :hook
  (dired-mode . org-download-enable))

;; org-reveal
;;
;; Org-Reveal exports your Org documents to reveal.js presentations.
;;
;; Source: https://github.com/yjwen/org-reveal/

(use-package org-re-reveal
  :commands (org-re-reveal-export-to-html org-re-reveal-export-to-html-and-browse)
  :after (org))

;; org-cliplink
;;
;; Insert org-mode links from clipboard
;;
;; Source: https://github.com/rexim/org-cliplink

(use-package org-cliplink
  :diminish
  :commands 'org-cliplink)

;; org-noter
;;
;; Emacs document annotator, using Org-mode
;;
;; Source: https://github.com/weirdNox/org-noter

(use-package org-noter
  :diminish
  :commands 'org-noter)

(provide 'jag-modes-org)
;;; jag-modes-org.el ends here
