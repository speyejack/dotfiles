;;; jag-keys-insert.el --- Insert key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The insert key bindings used throughout Emacs

;;; Code:

;; Create the insert leader definer
(general-create-definer jag--insert-leader-def
  :which-key "Insert leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " i")
  :global-prefix (concat jag-emacs-leader-key " i"))


(jag--insert-leader-def
  "i" '(:wk "lorem-ipsum")
  "il" 'lorem-ipsum-insert-list
  "ip" 'lorem-ipsum-insert-paragraphs
  "is" 'lorem-ipsum-insert-sentences
  "u" 'helm-unicode
  "n" 'rectangle-number-lines
  "y" 'helm-yas-complete
  "a" 'aya-create
  "e" 'aya-expand)


(provide 'jag-keys-insert)

;;; jag-keys-insert.el ends here
