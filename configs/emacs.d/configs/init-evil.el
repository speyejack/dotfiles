
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (evil-define-key 'normal global-map (kbd "-")       'helm-find-files)

  (use-package key-chord
	:ensure t
	:config
	(setq key-chord-two-keys-delay 0.2)
	(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
	(key-chord-mode 1))

  (use-package evil-surround
	:ensure t
	:config
	(global-evil-leader-mode))


  (use-package evil-surround
	:ensure t
	:config
	(global-evil-surround-mode 1))

  (use-package evil-smartparens
	:ensure t
	:config
	(evil-smartparens-mode 1))

  (use-package evil-leader
	:ensure t
	:config
	(global-evil-leader-mode)
	(evil-leader/set-leader ",")
	(evil-leader/set-key
	  ","  'other-window
	  "."  'mode-line-other-buffer
	  ":"  'eval-expression
	  "aa" 'align-regexp
	  "a=" 'my-align-single-equals
	  "b"  'helm-mini             ;; Switch to another buffer
	  "B"  'magit-blame-toggle
	  "c"  'comment-dwim
	  "d"  'kill-this-buffer
	  "D"  'open-current-line-in-codebase-search
	  "f"  'helm-imenu            ;; Jump to function in buffer
	  "g"  'magit-status
	  "h"  'fontify-and-browse    ;; HTML-ize the buffer and browse the result
	  "l"  'whitespace-mode       ;; Show invisible characters
	  "nn" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
	  "nw" 'widen
	  "o"  'delete-other-windows  ;; C-w o
	  "p"  'helm-show-kill-ring
	  "s"  'ag-project            ;; Ag search from project's root
	  "r"  'chrome-reload
	  "R"  (lambda () (interactive) (font-lock-fontify-buffer) (redraw-display))
	  "S"  'delete-trailing-whitespace
	  "t"  'gtags-reindex
	  "T"  'gtags-find-tag
	  "w"  'save-buffer
	  "x"  'helm-M-x
	  "y"  'yank-to-x-clipboard)))

(provide 'init-evil)
