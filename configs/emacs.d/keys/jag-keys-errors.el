;;; jag-keys-errors.el --- Errors key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The errors key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "e" "error")

(jag-declare-prefixes
 '(("e" "errors")))

(jag-define-keys jag-error-map
  "e" 'helm-flycheck
  "c" 'helm-flycheck
  "s" 'flyspell-correct-next
  "S" 'flyspell-correct-previous
  "d" 'toggle-debug-on-error
  "D" 'toggle-debug-on-quit
  "t" 'hl-todo-next
  "T" 'hl-todo-prev)

(provide 'jag-keys-errors)

;;; jag-keys-errors.el ends here
