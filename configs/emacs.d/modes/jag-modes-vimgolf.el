;;; jag-modes-vimgolf.el --- Config for mode vimgolf

;;; Commentary:

;;; Code:

(use-package jag-funcs-vimgolf
  :defer t
  :straight nil)

(use-package vimgolf
  :diminish
  :commands (vimgolf vimgolf-browse)
  :after evil
  :bind
  (:map vimgolf-mode-map
   ("M-r" . 'vimgolf-revert)
   ("M-q" . 'vimgolf-quit)
   ("M-p" . 'vimgolf-pause)
   ("M-c" . 'vimgolf-continue)
   ("M-d" . 'vimgolf-diff)
   ("M-s" . 'vimgolf-submit)))

(provide 'jag-modes-vimgolf)
;;; jag-modes-vimgolf.el ends here
