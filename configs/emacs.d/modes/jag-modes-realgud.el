;;; jag-modes-realgud.el --- Config for mode realgud

;;; Commentary:

;;; Code:

(use-package jag-funcs-realgud
  :ensure nil
  )

(use-package realgud
  :commands (realgud:gdb realgud:pdb)
  :bind
  (:map realgud-short-key-mode
   ("M-J" . realgud:cmd-newer-frame)
   ("M-K" . realgud:cmd-older-frame)
   ("M-G" . realgud:cmd-jump)
   ("M-j" . realgud:cmd-next)
   ("M-k" . realgud:cmd-eval-at-point)
   ("M-g" . realgud:cmd-until-here)
   ("M-h" . realgud:cmd-finish)
   ("M-q" . realgud:cmd-quit)
   ("M-c" . realgud:cmd-continue)
   ("M-b" . realgud:cmd-break)
   ("M-d" . realgud:cmd-delete)
   ("M-l" . realgud:cmd-step)
   ("M-r" . realgud:cmd-restart)))

(provide 'jag-modes-realgud)
;;; jag-modes-realgud.el ends here
