;;; jag-keys-application.el --- Application key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The application key bindings used throughout Emacs

;;; Code:


;; Create the application leader definer
(general-create-definer jag--application-leader-def
  :which-key "application"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " a")
  :global-prefix (concat jag-emacs-leader-key " a"))


(jag--application-leader-def
 "c" 'calc-dispatch
 "z" 'zeal-at-point
 "Z" 'zeal-at-point-search
 "p" 'list-processes
 "P" 'proced
 "e" 'ediff
 "d" 'dired
 "h" 'hexl-mode
 "f" 'floobits-join-workspace
 "r" 'spray-mode
 "t" 'term
 "s" 'eshell
 "S" 'shell
 "l" '(:wk "desktop")
 "ls" 'desktop-save
 "ll" 'desktop-read
 "u" 'undo-tree-visualize)


(provide 'jag-keys-application)

;;; jag-keys-application.el ends here
