;;; jag-keys-organize.el --- Config for key organize

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "o" "organize")

(jag-declare-prefixes
 '(("o" "organize")
   ("og" "goto")
   ("oc" "clock")
   ("or" "capture")
   ("oR" "remember")
   ("oK" "roam")))

(jag-define-keys jag-organize-map
 "a" 'org-agenda

 "h" 'calendar

 "o" 'jag--quick-org-task-capture
 "O" 'jag-org-file-task-capture
 "d" 'jag-org-due-capture
 "i" 'jag-org-interrupt-capture
 "s" 'jag-org-schedule-capture

 "t" 'jag-org-clock-in-capture
 "T" 'jag-org-clock-gtd
 "y" 'org-clock-out
 "Y" 'org-clock-cancel

 "cd" 'org-clock-display
 "ce" 'org-clock-modify-effort-estimate
 "cf" 'org-resolve-clocks
 "cr" 'org-clock-report
 "ct" 'org-clock-in
 "cu" 'org-clock-in-last
 "cy" 'org-clock-out
 "cc" 'jag-org-clock-select-task

 "j" 'jag-org-journal-capture
 "J" 'org-journal-new-entry

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

 "Rr" 'evil-operator-remember
 "Rl" 'remember

 "rr" 'evil-operator-org-capture
 "rl" 'org-capture-goto-last-stored
 "rc" 'org-capture)

(use-package jag-funcs-organize
  :commands
  (jag--quick-org-task-capture
   jag-org-file-task-capture
   jag-org-clock-in-capture
   jag-org-due-capture
   jag-org-interrupt-capture
   jag-org-journal-capture
   jag-org-clock-gtd
   jag-org-shedule-capture
   jag-org-clock-select-task)
  :ensure nil)

(provide 'jag-keys-organize)
;;; jag-keys-organize.el ends here
