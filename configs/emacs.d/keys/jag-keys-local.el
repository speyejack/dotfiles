;;; jag-keys-local.el --- Local key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The local key bindings used throughout Emacs

;;; Code:

(jag-declare-leader-prefix "m" "local")

(defun jag-define-leader-keys-for-major-mode (mode key def &rest bindings)
  "Add KEY and DEF as key bindings in major-MODE.
The keymap used for KEY is activated by SPC-m and under `M-m m'
for the major-mode MODE.
BINDINGS are additions KEY-DEF pairs. `kbd' is applied to every KEY."
  (apply 'jag-define-keys (jag--init-major-mode-map mode) key def bindings))



(provide 'jag-keys-local)

;;; jag-keys-local.el ends here
