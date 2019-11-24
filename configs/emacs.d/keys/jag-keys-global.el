;;; jag-keys-global.el --- Config for key global

;;; Commentary:

;;; Code:


(use-package jag-funcs-global
  :ensure nil
  :after evil
  :config
  (jag-declare-prefix "gr" "multiple-cursors")
  (evil-define-key '(motion normal visual operator) 'global
	(kbd "C-k")  'scroll-down-command
	(kbd "C-j")  'scroll-up-command
	(kbd "J")  'jag-evil-next-visual-line-5
	(kbd "K")  'jag-evil-previous-visual-line-5
	(kbd "gh") 'evil-first-non-blank-of-visual-line
	(kbd "gm") 'jag-goto-middle-of-line
	(kbd "gH") 'evil-beginning-of-visual-line
	(kbd "gl") 'evil-end-of-visual-line
	(kbd "gL") 'evil-end-of-line
	(kbd "gJ") 'evil-join
	(kbd "gs") 'evil-operator-fold
	(kbd "gV") 'evil-operator-highlight
	(kbd "go") 'evil-operator-org-capture
	(kbd "gR") 'evil-operator-remember
	(kbd "u")   'undo-tree-undo
	(kbd "U")   'undo-tree-redo
	(kbd "gc") 'evil-commentary
	(kbd "gy") 'evil-commentary-yank
	(kbd "gx") 'evil-exchange
	(kbd "gX") 'evil-exchange-cancel
	(kbd "grh") 'evil-mc-make-cursor-here
	(kbd "grj") 'evil-mc-make-cursor-move-next-line
	(kbd "grk") 'evil-mc-make-cursor-move-prev-line
	(kbd "grp") 'evil-mc-pause-cursors
	(kbd "grr") 'evil-mc-resume-cursors
	(kbd "grq") 'evil-mc-undo-all-cursors
	(kbd "gru") 'evil-mc-undo-last-added-cursor
	(kbd "grm") 'evil-mc-make-all-cursors)


  ;; Handles visual mode inconsistencies
  (evil-define-key '(motion normal visual) 'global
	(kbd "<remap> <evil-next-line>")  'evil-next-visual-line
	(kbd "<remap> <evil-previous-line>")  'evil-previous-visual-line)

  (evil-define-key '(operator) 'global
	(kbd "<remap> <evil-next-line>")  'evil-next-line
	(kbd "<remap> <evil-previous-line>")  'evil-previous-line)


  (jag-define-keys minibuffer-inactive-mode-map
				   "M-h" 'left-char
				   "M-l" 'right-char
				   "M-j" 'next-complete-history-element
				   "M-k" 'previous-complete-history-element)
  )

(provide 'jag-keys-global)
;;; jag-keys-global.el ends here
