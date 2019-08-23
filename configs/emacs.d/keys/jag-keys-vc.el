;;; jag-keys-vc.el --- version control key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The version control key bindings used throughout Emacs

;;; Code:

;; Create the vc leader definer
(general-create-definer jag--vc-leader-def
  :which-key "Vc leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " g")
  :global-prefix (concat jag-emacs-leader-key " g"))


(jag--vc-leader-def
 "g" 'magit-status
 "m" 'magit-dispatch
 "S" 'magit-stage-file
 "U" 'magit-unstage-file
 "l" 'magit-log-buffer-file
 "t" 'git-timemachine)


(provide 'jag-keys-vc)

;;; jag-keys-vc.el ends here
