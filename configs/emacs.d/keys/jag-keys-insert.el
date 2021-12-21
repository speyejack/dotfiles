;;; jag-keys-insert.el --- Insert key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The insert key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "i" "insert")

(jag-declare-leader-prefixes
 '(("i" "insert")
   ("il" "lorem-ipsum")))

(jag-define-keys jag-insert-map
  "ll" 'lorem-ipsum-insert-list
  "lp" 'lorem-ipsum-insert-paragraphs
  "ls" 'lorem-ipsum-insert-sentences
  "u" 'helm-unicode
  "n" 'rectangle-number-lines
  "y" 'helm-yas-complete
  "a" 'aya-create
  "e" 'aya-expand)


(provide 'jag-keys-insert)

;;; jag-keys-insert.el ends here
