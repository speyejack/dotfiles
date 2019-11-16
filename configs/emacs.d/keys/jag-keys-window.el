;;; jag-keys-window.el --- Window key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The window key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "w" "window")

(use-package jag-funcs-window
  :ensure nil
  :bind
  (:map jag-window-map
   ("2" . 'jag-layout-double-columns)
   ("3" . 'jag-layout-triple-columns)
   ("+" . 'evil-window-increase-height)
   ("-" . 'evil-window-decrease-height)
   (">" . 'evil-window-increase-width)
   ("<" . 'evil-window-decrease-width)
   ("=" . 'balance-windows)
   ("_" . 'jag-maximize-horizontally)
   ("/" . 'jag-window-layout-toggle)
   ("F" . 'jag-select-window-by-number)
   ("H" . 'evil-window-move-far-left)
   ("J" . 'evil-window-move-very-bottom)
   ("K" . 'evil-window-move-very-top)
   ("L" . 'evil-window-move-far-right)
   ("R" . 'jag-rotate-windows-backward)
   ("S" . 'split-window-below-and-focus)
   ("U" . 'winner-redo)
   ("v" . 'split-window-right-and-focus)
   ("W" . 'evil-window-prev)
   ("b" . 'jag-switch-to-minibuffer-window)
   ("c" . 'make-frame)
   ("d" . 'jag-delete-window)
   ("f" . 'follow-mode)
   ("h" . 'evil-window-left)
   ("j" . 'evil-window-down)
   ("k" . 'evil-window-up)
   ("l" . 'evil-window-right)
   ("m" . 'jag-toggle-maximize-buffer)
   ("n" . 'evil-window-new)
   ("o" . 'delete-other-windows)
   ("p" . 'evil-window-mru)
   ("q" . 'evil-quit)
   ("r" . 'jag-rotate-windows-forward)
   ("s" . 'evil-window-split)
   ("t" . 'jag-toggle-current-window-dedication)
   ("u" . 'winner-undo)
   ("v" . 'evil-window-vsplit)
   ("w" . 'evil-window-next)
   ("y" . 'other-frame)))


(provide 'jag-keys-window)

;;; jag-keys-window.el ends here
