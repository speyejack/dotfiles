;;; jag-keys-files.el --- Files key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The files key bindings used throughout Emacs

;;; Code:

;; Create the files leader definer
(general-create-definer jag--files-leader-def
  :which-key "Files leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " f")
  :global-prefix (concat jag-emacs-leader-key " f"))

(use-package jag-funcs-configuring
  :ensure nil
  :commands (jag-new-func-module
			 jag-new-mode-module
			 jag-new-general-module
			 jag-new-key-module))

(use-package jag-funcs-files
  :ensure nil
  :general
  (jag--files-leader-def
	"c" 'jag-copy-file
	"C" '(:wk "covert")
	"Cd" 'jag-unix2dos
	"Cu" 'jag-dos2unix
	"D" 'jag-delete-current-buffer-file
	"d"  '(:wk "dotfiles")
	"df" 'jag-new-func-module
	"dg" 'jag-new-general-module
	"dk" 'jag-new-key-module
	"dl" 'helm-locate-library
	"dm" 'jag-new-mode-module
	"ds" 'jag-config-switch-between-func-and-module
	"E" 'jag-sudo-edit
	"f" 'helm-find-files
	"g" '(:wk "goto")
	"gd" 'jag-open-dotfiles
	"gi" 'jag-open-inbox
	"G" 'rgrep
	"j" 'dired-jump
	"l" 'find-file-literally
	"L" 'helm-locate
	"o" 'jag-open-file-or-directory-in-external-app
	"r" 'helm-recentf
	"R" 'jag-rename-current-buffer-file
	"S" 'evil-write-all
	"s" 'save-buffer
	"t" 'open-junk-file
	"v"  '(:wk "variables")
	"vd"  'add-dir-local-variable
	"vf"  'add-file-local-variable
	"vp"  'add-file-local-variable-prop-line
	"y" 'jag-show-and-copy-buffer-filename))

(provide 'jag-keys-files)

;;; jag-keys-files.el ends here
