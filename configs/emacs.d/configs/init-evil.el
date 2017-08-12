;;; init-evil.el --- Package description
;;; Commentary:

;;; Code:

(use-package evil
  :ensure t
  :config
  (evil-define-key 'normal global-map (kbd "-")       'helm-find-files)
  (setq evil-magic 'very-magic)

  (use-package evil-escape
	:ensure t
	:config
	(setq-default evil-escape-key-sequence "jk")
	(setq evil-escape-unordered-key-sequence 1)
	(evil-escape-mode 1))

  (use-package evil-surround
	:ensure t
	:config
	(global-evil-surround-mode 1))

  (use-package evil-smartparens
	:ensure t
	:config
	(evil-smartparens-mode 1))

  (use-package evil-snipe
	:ensure t
	:config
	(require 'evil-snipe)
	(evil-snipe-mode 1)
	(evil-snipe-override-mode 1))

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
	  ;; Add evil nerd commentary
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
	  "y"  'yank-to-x-clipboard))
  (evil-mode 1))
(provide 'init-evil)
;;; init-evil.el ends here
