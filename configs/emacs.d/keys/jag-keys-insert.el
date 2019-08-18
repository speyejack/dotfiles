;;; jag-keys-insert.el --- Insert key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The insert key bindings used throughout Emacs

;;; Code:

;; Create the insert leader definer
(general-create-definer jag--insert-leader-def
  :which-key "Insert leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " i")
  :global-prefix (concat jag-emacs-leader-key " i"))


(jag--insert-leader-def
 "u" 'helm-unicode
 "y" 'helm-yas-complete
 "g" 'helm-insertile-grep)


(provide 'jag-keys-insert)

;;; jag-keys-insert.el ends here
