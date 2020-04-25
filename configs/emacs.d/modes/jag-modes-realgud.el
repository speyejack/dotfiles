;;; jag-modes-realgud.el --- Config for mode realgud

;;; Commentary:

;;; Code:

(use-package jag-funcs-realgud
  :defer t
  :ensure nil)

;; realgud
;;
;; The Grand "Cathedral" Debugger rewrite
;;
;; Source: https://github.com/realgud/realgud

(use-package realgud
  :commands (realgud:gdb realgud:pdb)
  :config
  (setq realgud-safe-mode nil)
  (evil-define-key 'motion realgud:shortkey-mode-map
	(kbd "M-J") 'realgud:cmd-newer-frame
	(kbd "M-K") 'realgud:cmd-older-frame
	(kbd "M-G") 'realgud:cmd-jump
	(kbd "M-j") 'realgud:cmd-next
	(kbd "M-k") 'realgud:cmd-eval-at-point
	(kbd "M-g") 'realgud:cmd-until-here
	(kbd "M-h") 'realgud:cmd-finish
	(kbd "M-q") 'realgud:cmd-quit
	(kbd "M-c") 'realgud:cmd-continue
	(kbd "M-b") 'realgud:cmd-break
	(kbd "M-B") 'realgud:cmd-tbreak
	(kbd "M-d") 'realgud:cmd-delete
	(kbd "M-l") 'realgud:cmd-step
	(kbd "M-r") 'realgud:cmd-restart)
  (evil-define-key 'insert realgud:gdb-track-mode-map
	(kbd "M-j") 'comint-next-matching-input-from-input
	(kbd "M-k") 'comint-previous-matching-input-from-input
	(kbd "M-J") 'realgud-track-hist-newer
	(kbd "M-K") 'realgud-track-hist-older)
  (evil-define-key 'motion realgud:gdb-track-mode-map
	(kbd "M-j") 'realgud:cmd-next
	(kbd "M-k") 'realgud:cmd-eval
	(kbd "M-J") 'comint-next-input
	(kbd "M-K") 'comint-previous-input)
  )

(provide 'jag-modes-realgud)
;;; jag-modes-realgud.el ends here
