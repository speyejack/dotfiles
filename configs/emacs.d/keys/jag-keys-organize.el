;;; jag-keys-organize.el --- Config for key organize

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "o" "organize")

(jag-declare-prefixes
 '(("o" "organize")
   ("og" "goto")
   ("oc" "clock")
   ("or" "remember")
   ("ob" "bibliography")
   ("oK" "roam")))

(jag-define-keys jag-organize-map
 "a" 'org-agenda

 "h" 'calendar

 "o" 'jag--quick-org-task-capture
 "O" 'jag-org-file-task-capture
 "i" 'jag-org-interrupt-capture
 "n" 'jag-org-note-gtd
 "N" 'org-noter


 "p" 'org-capture
 "P" 'evil-operator-org-capture
 "l" 'org-capture-goto-last-stored

 "t" 'jag-org-clock-gtd
 "T" 'jag-org-clock-in-capture
 "y" 'org-clock-out
 "Y" 'org-clock-cancel

 "cd" 'org-clock-display
 "ce" 'org-clock-modify-effort-estimate
 "cf" 'org-resolve-clocks
 "cr" 'org-clock-report
 "ct" 'org-clock-in
 "cu" 'org-clock-in-last
 "cF" 'org-clock-update-time-maybe
 "cy" 'org-clock-out
 "cc" 'jag-org-clock-select-task

 "k" 'org-roam-find-file
 "Kk" 'org-roam
 "Kb" 'org-roam-build-cache
 "Kd" 'org-roam-date
 "Kf" 'org-roam-tomorrow
 "Kg" 'org-roam-graph
 "Ki" 'org-roam-insert
 "Kl" 'org-roam-open-at-point
 "Kt" 'org-roam-today
 "Ky" 'org-roam-yesterday

 "gc" 'org-clock-goto
 "gh" 'org-capture-goto-last-stored
 "gp" 'org-projectile-goto-location-for-project
 "gi" 'jag-open-inbox
 "gg" 'jag-open-gtd

 "bb" 'org-ref
 "bh" 'org-ref-help
 "bd" 'doi-add-bibtex-entry
 "bp" 'org-ref-pdf-to-bibtex
 "bu" 'jag-org-ref-doi-from-url
 "bl" 'org-ref-open-citation-at-point

 "rr" 'evil-operator-remember
 "rl" 'remember)

(use-package jag-funcs-organize
  :commands
  (jag--quick-org-task-capture
   jag-org-file-task-capture
   jag-org-clock-in-capture
   jag-org-due-capture
   jag-org-interrupt-capture
   jag-org-journal-capture
   jag-org-clock-gtd
   jag-org-schedule-capture
   jag-org-note-gtd
   jag-org-clock-select-task)
  :ensure nil)

(provide 'jag-keys-organize)
;;; jag-keys-organize.el ends here
