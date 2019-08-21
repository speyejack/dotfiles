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

(jag--files-leader-def
 "t" 'open-junk-file
 "j" 'dired-jump
 "s" 'save-buffer
 "S" 'evil-write-all
 "f" 'helm-find-files)


(provide 'jag-keys-files)

;;; jag-keys-files.el ends here
