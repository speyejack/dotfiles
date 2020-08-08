;;; jag-modules-comms.el --- Config for general comms module

;;; Commentary:

;;; Code:

(use-package jag-funcs-comms
  :defer t
  :ensure nil
  :commands 'jag-decrypt-and-update-mail)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(use-package mu4e
  :ensure nil
  :commands 'mu4e
  :config
  (setq mu4e-get-mail-command "offlineimap")

  (dolist (mode '(mu4e-main-mode
				  mu4e-headers-mode
				  mu4e-view-mode
				  mu4e-org-mode))
	(evil-set-initial-state mode 'normal))
  (evil-set-initial-state 'mu4e-compose-mode 'insert)

  (evil-define-key 'normal mu4e-main-mode-map
	"J" 'mu4e~headers-jump-to-maildir
	"j" 'next-line
	"k" 'previous-line
	"u" 'jag-decrypt-and-update-mail
	"gr" 'revert-buffer
	"b" 'mu4e-headers-search-bookmark
	"B" 'mu4e-headers-search-bookmark-edit
	"N" 'mu4e-news
	";" 'mu4e-context-switch
	"H" 'mu4e-display-manual
	"C" 'mu4e-compose-new
	"cc" 'mu4e-compose-new
	"x" 'mu4e-kill-update-mail
	"A" 'mu4e-about
	"f" 'smtpmail-send-queued-mail
	"m" 'mu4e~main-toggle-mail-sending-mode
	"s" 'mu4e-headers-search
	"q" 'mu4e-quit)

  (evil-define-key 'normal mu4e-headers-mode-map
	"q" 'mu4e~headers-quit-buffer
	"J" 'mu4e~headers-jump-to-maildir
	"C" 'mu4e-compose-new
	"E" 'mu4e-compose-edit
	"F" 'mu4e-compose-forward
	"R" 'mu4e-compose-reply
	"cc" 'mu4e-compose-new
	"ce" 'mu4e-compose-edit
	"cf" 'mu4e-compose-forward
	"cr" 'mu4e-compose-reply
	"o" 'mu4e-headers-change-sorting
	"j" 'mu4e-headers-next
	"k" 'mu4e-headers-prev
	"gr" 'mu4e-headers-rerun-search
	"b" 'mu4e-headers-search-bookmark
	"B" 'mu4e-headers-search-bookmark-edit
	";" 'mu4e-context-switch
	(kbd "RET") 'mu4e-headers-view-message
	"/" 'mu4e-headers-search-narrow
	"s" 'mu4e-headers-search
	"S" 'mu4e-headers-search-edit
	"x" 'mu4e-mark-execute-all
	"a" 'mu4e-headers-action
	"*" 'mu4e-headers-mark-for-something ; TODO: Don't override evil-seach-word-forward?
	"&" 'mu4e-headers-mark-custom
	"A" 'mu4e-headers-mark-for-action
	"m" 'mu4e-headers-mark-for-move
	"r" 'mu4e-headers-mark-for-refile
	"D" 'mu4e-headers-mark-for-delete
	"d" 'mu4e-headers-mark-for-trash
	"=" 'mu4e-headers-mark-for-untrash
	"u" 'mu4e-headers-mark-for-unmark
	"U" 'mu4e-mark-unmark-all
	"?" 'mu4e-headers-mark-for-unread
	"!" 'mu4e-headers-mark-for-read
	"%" 'mu4e-headers-mark-pattern
	"+" 'mu4e-headers-mark-for-flag
	"-" 'mu4e-headers-mark-for-unflag
	"[[" 'mu4e-headers-prev-unread
	"]]" 'mu4e-headers-next-unread
	"gk" 'mu4e-headers-prev-unread
	"gj" 'mu4e-headers-next-unread
	"\M-k" 'mu4e-headers-prev-unread
	"\M-j" 'mu4e-headers-next-unread
	"\C-j" 'mu4e-headers-next
	"\C-k" 'mu4e-headers-prev
	"zr" 'mu4e-headers-toggle-include-related
	"zt" 'mu4e-headers-toggle-threading
	"zd" 'mu4e-headers-toggle-skip-duplicates
	"gl" 'mu4e-show-log
	"gv" 'mu4e-select-other-view
	"t" (lambda (&optional GOTO)
		  (interactive "P")
		  (mu4e-org-store-link)
		  (org-capture GOTO "h"))
	"T" (lambda ()
		  (interactive)
		  (mu4e-headers-mark-thread nil '(read))))

  (evil-define-key 'normal mu4e-compose-mode-map
	"gg" 'mu4e-compose-goto-top
	"G" 'mu4e-compose-goto-bottom)

  (evil-define-key 'normal mu4e-view-mode-map
	" " 'mu4e-view-scroll-up-or-next
	[tab] 'shr-next-link
	[backtab] 'shr-previous-link
	"q" 'mu4e~view-quit-buffer
	"gx" 'mu4e-view-go-to-url
	"gX" 'mu4e-view-fetch-url
	"C" 'mu4e-compose-new
	"H" 'mu4e-view-toggle-html
	;; "E"               mu4e-compose-edit
	;; "F"               mu4e-compose-forward
	"R" 'mu4e-compose-reply
	"cc" 'mu4e-compose-new
	"ce" 'mu4e-compose-edit
	"cf" 'mu4e-compose-forward
	"cr" 'mu4e-compose-reply
	"p" 'mu4e-view-save-attachment
	"P" 'mu4e-view-save-attachment-multi ; Since mu4e 1.0, -multi is same as normal.
	"O" 'mu4e-headers-change-sorting
	"o" 'mu4e-view-open-attachment
	"A" 'mu4e-view-attachment-action
	"a" 'mu4e-view-action
	"J" 'mu4e~headers-jump-to-maildir
	"[[" 'mu4e-view-headers-prev-unread
	"]]" 'mu4e-view-headers-next-unread
	"gk" 'mu4e-view-headers-prev-unread
	"gj" 'mu4e-view-headers-next-unread
	"\M-k" 'mu4e-view-headers-prev-unread
	"\M-j" 'mu4e-view-headers-next-unread
	"\M-K" 'mu4e-view-headers-prev
	"\M-J" 'mu4e-view-headers-next
	"\C-j" 'mu4e-view-headers-next
	"\C-k" 'mu4e-view-headers-prev
	"x" 'mu4e-view-marked-execute
	"&" 'mu4e-view-mark-custom
	"*" 'mu4e-view-mark-for-something   ; TODO: Don't override "*".
	"m" 'mu4e-view-mark-for-move
	"r" 'mu4e-view-mark-for-refile
	"D" 'mu4e-view-mark-for-delete
	"d" 'mu4e-view-mark-for-trash
	"=" 'mu4e-view-mark-for-untrash
	"u" 'mu4e-view-unmark
	"U" 'mu4e-view-unmark-all
	"?" 'mu4e-view-mark-for-unread
	"!" 'mu4e-view-mark-for-read
	"%" 'mu4e-view-mark-pattern
	"+" 'mu4e-view-mark-for-flag
	"-" 'mu4e-view-mark-for-unflag
	"zr" 'mu4e-headers-toggle-include-related
	"zt" 'mu4e-headers-toggle-threading
	"za" 'mu4e-view-toggle-hide-cited
	"gl" 'mu4e-show-log
	"s" 'mu4e-view-search-edit
	"|" 'mu4e-view-pipe
	"." 'mu4e-view-raw-message
	(kbd "C--") 'mu4e-headers-split-view-shrink
	(kbd "C-+") 'mu4e-headers-split-view-grow
	"t" (lambda (&optional GOTO)
		  (interactive "P")
		  (mu4e-org-store-link)
		  (org-capture GOTO "h"))
	"T" (lambda ()
		  (interactive)
		  (mu4e-headers-mark-thread nil '(read)))))

(provide 'jag-modules-comms)
;;; jag-modules-comms.el ends here
