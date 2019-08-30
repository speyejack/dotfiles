;;; jag-keys-search.el --- Search key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The search key bindings used throughout Emacs

;;; Code:

;; Create the save/search/symbols leader definer
(general-create-definer jag--save-search-symbols-leader-def
  :which-key "save/search/symbols"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " s")
  :global-prefix (concat jag-emacs-leader-key " s"))


(jag--save-search-symbols-leader-def
 "a" 'helm-do-ag
 "A" '(:wk "ag")
 "Al" 'helm-do-this-file
 "Ab" 'helm-do-ag-buffers
 "Ap" 'helm-ag-pop-stack
 "e" 'evil-iedit-state/iedit-mode
 "r" 'helm-rg
 "g" 'helm-grep
 "t" 'srefactor-refactor-at-point
 "L" 'helm-google
 "f" 'helm-imenu
 "h" 'jag-highlight-symbol
 "j" 'helm-swoop
 "J" 'helm-multi-swoop-all
 "i" 'helm-multi-swoop-current-mode
 "I" 'helm-multi-swoop
 "s" 'save-buffer
 "S" 'evil-write-all)


(provide 'jag-keys-search)

;;; jag-keys-search.el ends here
