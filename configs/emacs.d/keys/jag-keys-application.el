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
 "C" 'helm-calcul-expression
 "z" 'zeal-at-point
 "Z" 'zeal-at-point-search
 "p" 'list-processes
 "P" 'proced
 "e" 'ediff
 "d" 'dired
 "h" 'hexl-mode
 "f" 'floobits-join-workspace
 "r" 'spray-mode
 "T" 'term
 "t" 'helm-top
 "s" 'eshell
 "S" 'shell
 "l" '(:wk "desktop")
 "ls" 'desktop-save
 "ll" 'desktop-read
 "g" '(:wk "games")
 "g5" '5x5
 "gB" 'bubbles
 "gD" 'doctor
 "gH" 'hanoi-unix
 "gM" 'morse-region
 "gT" 'spook
 "gb" 'blackbox
 "gd" 'dunnet
 "ge" 'decipher
 "gg" 'gomoku
 "gh" 'hanoi
 "gl" 'life
 "gm" 'mpuz
 "gp" 'pong
 "gr" 'dissociated-press
 "gs" 'snake
 "gs" 'solitaire
 "gt" 'tetris
 "gx" 'butterfly
 "gz" 'zone
 "u" 'undo-tree-visualize)


(provide 'jag-keys-application)

;;; jag-keys-application.el ends here
