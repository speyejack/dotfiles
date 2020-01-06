;;; jag-keys-files.el --- Files key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The files key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "f" "files")

(jag-declare-prefixes
 '(("f" "files")
   ("fC" "convert")
   ("fd" "dotfiles")
   ("fg" "goto")
   ("fv" "variables")))

(jag-define-keys jag-files-map
 "c" 'jag-copy-file
 "Cd" 'jag-unix2dos
 "Cu" 'jag-dos2unix
 "D" 'jag-delete-current-buffer-file
 "d" 'ediff
 "E" 'jag-sudo-edit
 "f" 'helm-find-files
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
 "vd"  'add-dir-local-variable
 "vf"  'add-file-local-variable
 "vp"  'add-file-local-variable-prop-line
 "y" 'jag-show-and-copy-buffer-filename)


(use-package jag-funcs-configuring
  :ensure nil
  :commands
  (jag-new-func-module
   jag-new-general-module
   jag-new-key-module
   jag-new-mode-module))

(use-package jag-funcs-files
  :ensure nil
  :commands
  (jag-copy-file
   jag-unix2dos
   jag-dos2unix
   jag-delete-current-buffer-file
   jag-config-switch-between-func-and-other
   jag-sudo-edit
   jag-open-dotfiles
   jag-open-inbox
   jag-open-file-or-directory-in-external-app
   jag-rename-current-buffer-file
   jag-show-and-copy-buffer-filename))

(provide 'jag-keys-files)

;;; jag-keys-files.el ends here
