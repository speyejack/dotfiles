;;; jag-keys-organize.el --- Config for key organize

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "o" "organize")

(jag-declare-prefixes
 '(("o" "organize")))

(jag-define-keys jag-organize-map
 "a" 'org-agenda
 "o" 'jag--quick-org-task-capture
 "O" 'org-projectile-capture-for-current-project
 "r" 'evil-operator-remember
 "R" 'remember
 "t" 'org-clock-in
 "T" 'org-clock-in-last
 "y" 'org-clock-out
 "Y" 'org-clock-cancel
 "g" 'org-clock-goto
 "e" 'org-clock-modify-effort-estimate
 "c" 'evil-operator-org-capture
 "C" 'org-capture)

(use-package jag-funcs-organize
  :commands
  (jag--quick-org-task-capture)
  :ensure nil)

(provide 'jag-keys-organize)
;;; jag-keys-organize.el ends here
