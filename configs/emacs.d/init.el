(package-initialize) ;; You might already have this line

(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))

(require 'init-elpa)
(require 'user-config)
(require 'init-use-package)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(use-package magit
  :ensure t)

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode 1))

(use-package tiny-menu
  :ensure t)

(use-package company
		 :ensure t
		 :config
		 (global-company-mode 1))

(use-package helm
		 :ensure t
		 :config
		 (helm-mode 1))

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode 1)
  (require 'smartparens-config))

(setq org-capture-templates
      '(("a" "My TODO task format." entry
         (file "~/Dropbox/notes/afrl.org")
         "* TODO %?
SCHEDULED: %t")))


(defun my-org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "a"))

(setq org-agenda-files '("~/Dropbox/notes/"))
(define-key global-map (kbd "C-c c") 'my-org-task-capture)
(setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
(setq org-log-done (quote time))

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

(provide 'init)
;;; init.el ends here
