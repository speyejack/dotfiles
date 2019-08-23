;;; jag-core-settings.el --- Core Settings -*- lexical-binding: t -*-

;;; Commentary:

;; The core settings to use with Emacs

;;; Code:


(set-background-color "#002B36")
(set-foreground-color "#2AA198")
(set-face-background 'mode-line "#073642")

;; Set up the custom file name
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Some basic inhibiters to prevent a bunch of annoying screens
(setq inhibit-splash-screen t
	  inhibit-startup-message t
	  inhibit-startup-echo-area-message t)

;; Turn off the scroll bar and menu bar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Turn on tab indention and set tab width
(setq-default c-basic-offset 4
			  tab-width 4
			  c-default-style "linux"
			  indent-tabs-mode t)

;; Configure where auto saves go and several backup settings
(make-directory "~/.emacs.d/autosaves/" t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
	  kept-new-versions 6
	  kept-old-versions 2
	  version-control t)

;; A temporary solution to having to tangling while configuring
(defun jag--tangle-dotfile ()
  "If the current file is the init org file, the code blocks are tangled."
  (when (equal (file-truename (buffer-file-name))
			   (file-truename (expand-file-name (concat user-emacs-directory "init.org"))))
	(org-babel-tangle)
	(message "Dotfile tangled")))

(add-hook 'after-save-hook #'jag--tangle-dotfile)

;; Set emacs to use system clipboard
(setq select-enable-clipboard t)

;; Remove some safety for convenience
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'jag-core-settings)

;;; jag-core-settings.el ends here
