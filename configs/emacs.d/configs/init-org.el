;;; package --- Summary
;;; Commentary:

;;; Code:

(setq org-capture-templates
      '(("a" "My TODO task format." entry
         (file "~/Dropbox/notes/afrl.org")
         "* TODO %?
SCHEDULED: %t")))

(defun my-org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "a"))

(setq org-agenda-files '("~/Dropbox/notes/"))
(define-key global-map (kbd "C-c c") 'my-org-task-capture)
(setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
(setq org-log-done (quote time))
(provide 'init-org)
;;; init-org ends here
