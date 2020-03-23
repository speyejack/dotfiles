;;; jag-keys-organize.el --- Config for key organize

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "o" "organize")

(jag-declare-prefixes
 '(("o" "organize")
   ("og" "goto")))

(jag-define-keys jag-organize-map
 "a" 'org-agenda
 "d" 'jag-org-due-capture
 "o" 'jag--quick-org-task-capture
 "O" 'jag-org-file-task-capture
 "b" 'evil-operator-remember
 "B" 'remember
 "h" 'calendar
 "i" 'jag-org-interrupt-capture
 "t" 'jag-org-clock-in-capture
 "T" 'jag-org-clock-gtd
 "u" 'org-clock-in-last
 "y" 'org-clock-out
 "Y" 'org-clock-cancel
 "gc" 'org-clock-goto
 "gp" 'org-projectile-goto-location-for-project
 "gi" 'jag-open-inbox
 "gg" 'jag-open-gtd
 "e" 'org-clock-modify-effort-estimate
 "f" 'org-resolve-clocks
 "s" 'jag-org-schedule-capture
 "c" 'evil-operator-org-capture
 "C" 'org-capture)

(use-package jag-funcs-organize
  :commands
  (jag--quick-org-task-capture
   jag-org-file-task-capture
   jag-org-clock-in-capture
   jag-org-due-capture
   jag-org-interrupt-capture
   jag-org-clock-gtd
   jag-org-shedule-capture)
  :ensure nil)

(provide 'jag-keys-organize)
;;; jag-keys-organize.el ends here
