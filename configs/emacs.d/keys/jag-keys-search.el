;;; jag-keys-search.el --- Search key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The search key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "s" "search")

(jag-declare-leader-prefixes
 '(("s" "search")
   ("sA" "ag")))

(jag-define-keys jag-search-map
 "a" 'helm-do-ag
 "Al" 'helm-do-this-file
 "Ab" 'helm-do-ag-buffers
 "Ap" 'helm-ag-pop-stack
 "c" 'helm-colors
 "e" 'evil-iedit-state/iedit-mode
 "r" 'helm-rg
 "g" 'helm-grep
 "t" 'srefactor-refactor-at-point
 "L" 'helm-google
 "f" 'find-function
 "F" 'helm-imenu-in-all-buffers
 "h" 'jag-highlight-symbol
 "j" 'helm-swoop
 "J" 'helm-multi-swoop-all
 "i" 'helm-multi-swoop-current-mode
 "I" 'helm-multi-swoop
 "v" 'find-variable
 "s" 'helm-swoop
 "S" 'helm-multi-swoop-all)


(provide 'jag-keys-search)

;;; jag-keys-search.el ends here
