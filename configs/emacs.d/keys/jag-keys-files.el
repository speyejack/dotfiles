;;; jag-keys-files.el --- Files key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The files key bindings used throughout Emacs

;;; Code:

;; Create the files leader definer
(general-create-definer jag--files-leader-def
  :which-key "Files leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " f")
  :global-prefix (concat jag-emacs-leader-key " f"))


(provide 'jag-keys-files)

;;; jag-keys-files.el ends here
