;;; jag-keys-toggles.el --- Toggles key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The toggles key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "x" "toggles")

(jag-declare-prefixes
 '(("x" "toggles")))

(jag-define-keys jag-toggles-map
  "l" 'toggle-truncate-lines
  "L" 'helm-truncate-lines
  "d" 'toggle-debug-on-error
  "s" 'subword-mode)


(provide 'jag-keys-toggles)

;;; jag-keys-toggles.el ends here
