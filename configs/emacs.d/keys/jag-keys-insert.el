;;; jag-keys-insert.el --- Insert key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The insert key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "i" "insert")

(jag-declare-prefixes
 '(("i" "insert")
   ("ii" "lorem-ipsum")))

(jag-define-keys jag-insert-map
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
