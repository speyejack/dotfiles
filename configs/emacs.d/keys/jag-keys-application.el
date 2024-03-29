;;; jag-keys-application.el --- Application key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The application key bindings used throughout Emacs

;;; Code:


(jag-create-sub-leader-map jag-leader-map "a" "application")

(jag-declare-leader-prefixes
 '(("a" "applications")
   ("al" "desktop")
   ("ag" "games")))

(jag-define-keys jag-application-map
 "A" 'artist-mode
 "c" 'calc-dispatch
 "C" 'helm-calcul-expression
 "d" 'docker
 "z" 'zeal-at-point
 "Z" 'zeal-at-point-search
 "p" 'list-processes
 "P" 'proced
 "h" 'hexl-mode
 "f" 'floobits-join-workspace
 "r" 'spray-mode
 "T" 'term
 "t" 'helm-top
 "s" 'eshell
 "S" 'jag-create-new-eshell
 "o" 'shell
 "ls" 'desktop-save
 "ll" 'desktop-read
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
 "x" 'paradox-list-packages
 "u" 'undo-tree-visualize
 "v" 'vimgolf
 "V" 'vimgolf-browse)

(use-package jag-funcs-application
  :straight nil
  :commands 'jag-create-new-eshell)


(provide 'jag-keys-application)

;;; jag-keys-application.el ends here
