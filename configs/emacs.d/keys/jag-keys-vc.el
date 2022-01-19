;;; jag-keys-vc.el --- version control key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The version control key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "g" "vc")

(jag-declare-leader-prefixes
 '(("g" "version-control")))

(jag-define-keys jag-vc-map
 "g" 'magit-status
 "G" 'magit-dispatch
 "f" 'magit-find-file
 "m" 'git-messenger:popup-message
 "S" 'magit-stage-file
 "U" 'magit-unstage-file
 "l" 'magit-log-buffer-file
 "i" 'helm-gitignore
 "e" 'goto-last-change
 "E" 'goto-last-change-reverse
 "o" 'magit-todos-list
 "t" 'git-timemachine
 "b" 'magit-blame)


(provide 'jag-keys-vc)

;;; jag-keys-vc.el ends here
