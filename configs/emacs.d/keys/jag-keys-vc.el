;;; jag-keys-vc.el --- version control key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The version control key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "g" "vc")

(jag-define-keys jag-vc-map
 "g" 'magit-status
 "m" 'magit-dispatch
 "S" 'magit-stage-file
 "U" 'magit-unstage-file
 "l" 'magit-log-buffer-file
 "t" 'git-timemachine)


(provide 'jag-keys-vc)

;;; jag-keys-vc.el ends here
