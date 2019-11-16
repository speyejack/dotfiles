;;; jag-keys-registers.el --- Registers key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The registers key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "r" "registers")

(jag-define-keys jag-registers-map
 "r" 'helm-register
 "p" 'helm-show-kill-ring)


(provide 'jag-keys-registers)

;;; jag-keys-registers.el ends here
