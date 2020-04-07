;;; jag-keys-window.el --- Window key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The window key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "w" "window")

(jag-declare-prefixes
 '(("w" "window")
   ("wv" "resize")
   ("wz" "zoom")))

(jag-define-keys jag-window-map
 "2" 'jag-layout-double-columns
 "3" 'jag-layout-triple-columns
 "+" 'evil-window-increase-height
 "-" 'evil-window-decrease-height
 ">" 'evil-window-increase-width
 "<" 'evil-window-decrease-width
 "=" 'balance-windows
 "_" 'jag-maximize-horizontally
 "/" 'jag-window-layout-toggle
 "F" 'follow-mode
 "H" 'evil-window-move-far-left
 "J" 'evil-window-move-very-bottom
 "K" 'evil-window-move-very-top
 "L" 'evil-window-move-far-right
 "R" 'jag-rotate-windows-backward
 "S" 'evil-window-split
 "U" 'winner-redo
 "W" 'evil-window-next
 "b" 'jag-switch-to-minibuffer-window
 "d" 'jag-delete-window
 "f" 'make-frame
 "h" 'evil-window-left
 "j" 'evil-window-down
 "k" 'evil-window-up
 "l" 'evil-window-right
 "m" 'jag-toggle-maximize-buffer
 "n" 'evil-window-new
 "o" 'delete-other-windows
 "p" 'evil-window-mru
 "q" 'evil-quit
 "r" 'jag-rotate-windows-forward
 "s" 'evil-window-vsplit
 "t" 'jag-toggle-current-window-dedication
 "u" 'winner-undo
 "v" nil
 "w" 'ace-window
 "y" 'other-frame
 "z" nil)

(defhydra jag-window-resize
  (jag-window-map "v")
  "resize"
  ("h" evil-window-decrease-width "decrease width")
  ("j" evil-window-decrease-height "decrease height")
  ("k" evil-window-increase-height "increase height")
  ("l" evil-window-increase-width "increase width")
  ("q" nil "quit"))

(defhydra jag-window-zoom
  (jag-window-map "z")
  "zoom"
  ("j" text-scale-decrease "out")
  ("k" text-scale-increase "in")
  ("q" nil "quit"))

(use-package jag-funcs-window
  :commands
  (jag-layout-double-columns
   jag-layout-triple-columns
   jag-maximize-horizontally
   jag-window-layout-toggle
   jag-select-window-by-number
   jag-rotate-windows-backward
   jag-switch-to-minibuffer-window
   jag-delete-window
   jag-toggle-maximize-buffer
   jag-rotate-windows-forward
   jag-toggle-current-window-dedication)
  :ensure nil)


(provide 'jag-keys-window)

;;; jag-keys-window.el ends here
