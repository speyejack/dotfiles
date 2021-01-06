;;; jag-keys-global.el --- Config for key global

;;; Commentary:

;;; Code:


(use-package jag-funcs-global
  :straight nil
  :after evil
  :config
  (global-set-key (kbd "M-e") 'hippie-expand)
  (global-set-key (kbd "M-h") nil)
  (global-set-key (kbd "M-l") nil)
  (global-set-key (kbd "M-j") nil)
  (global-set-key (kbd "M-k") nil)

  (jag-declare-prefix "gr" "multiple-cursors")
  (evil-define-key '(motion) prog-mode-map
	(kbd "M-k")  'evil-backward-section-begin
	(kbd "M-j")  'evil-forward-section-begin
	(kbd "M-K")  'evil-backward-section-end
	(kbd "M-J")  'evil-forward-section-end
	(kbd "M-h")  nil
	(kbd "M-l")  nil)

  ;; Unbind anything I want to override
  (evil-define-key '(motion normal visual operator) 'global
	(kbd "J")  nil
	(kbd "gx")  nil
	(kbd "gJ")  nil)

  (evil-define-key '(motion) 'global
	(kbd "J")  'jag-evil-next-visual-line-5
	(kbd "K")  'jag-evil-previous-visual-line-5
	(kbd "M-k")  'evil-scroll-up
	(kbd "M-j")  'evil-scroll-down
	(kbd "C-k")  'scroll-down-command
	(kbd "C-j")  'scroll-up-command
	(kbd "M-o") 'comment-indent-new-line
	(kbd "gh") 'evil-first-non-blank-of-visual-line
	(kbd "gm") 'jag-goto-middle-of-line
	(kbd "gH") 'evil-beginning-of-line
	(kbd "gl") 'evil-end-of-visual-line
	(kbd "gL") 'evil-end-of-line
	(kbd "gJ") 'evil-join
	(kbd "g M-j") 'evil-join-whitespace
	(kbd "gs") 'evil-operator-fold
	(kbd "gV") 'evil-operator-highlight
	(kbd "go") 'evil-operator-org-capture
	(kbd "gR") 'evil-operator-remember
	(kbd "u")  'evil-undo
	(kbd "U")  'evil-redo
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

  (evil-define-key '(insert) 'global
	(kbd "M-RET") 'comment-indent-new-line)

  (jag-define-keys minibuffer-local-map
				   "M-p" 'evil-paste-after
				   "M-P" 'evil-paste-before
				   "M-y" 'evil-yank-line
				   "M-h" 'left-char
				   "M-l" 'right-char
				   "M-j" 'next-complete-history-element
				   "M-k" 'previous-complete-history-element)

  (jag-define-keys minibuffer-inactive-mode-map
				   "M-h" 'left-char
				   "M-l" 'right-char
				   "M-j" 'next-complete-history-element
				   "M-k" 'previous-complete-history-element))


(provide 'jag-keys-global)
;;; jag-keys-global.el ends here
