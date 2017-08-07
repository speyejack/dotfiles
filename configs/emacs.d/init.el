(require 'package) ;; You might already have this line
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize) ;; You might already have this line

(unless (package-installed-p 'use-package)
  (package-refresh-content)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq inhibit-splash-screen t
	  inhibit-startup-message t
	  inhibit-startup-echo-area-message t)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(use-package key-chord)

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

(use-package magit
  :ensure t)

(use-package gtags
  :ensure t)

(use-package tiny-menu
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
	(flycheck helm-gtags evil-rebellion tiny-menu gtags magit evil-leader evil-surround use-package helm key-chord evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq-default c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;;Exit insert mode by pressing j and then j quickly

(require 'helm-config)
(helm-mode 1)

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
