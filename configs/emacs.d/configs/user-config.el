[;;; user-config.el --- Package description
;;; Commentary:

;;; Code:

(setq inhibit-splash-screen t
	  inhibit-startup-message t
	  inhibit-startup-echo-area-message t)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

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
 (provide 'user-config)
;;; user-config.el ends here]
