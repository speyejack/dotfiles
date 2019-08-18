;;; jag-keys-buffer.el --- Buffer key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The buffer key bindings used throughout Emacs

;;; Code:

;; Create the buffer leader definer
(general-create-definer jag--buffer-leader-def
  :which-key "Buffer leader prefix"
  :states '(normal visual)
  :prefix (concat jag-leader-key " b")
  :global-prefix (concat jag-emacs-leader-key " b"))


(jag--buffer-leader-def
 "b" 'helm-mini
 "m" '(:wk "modes")
 "mm" 'helm-switch-major-mode
 "me" 'helm-enable-minor-mode
 "md" 'helm-disable-minor-mode)

(provide 'jag-keys-buffer)

;;; jag-keys-buffer.el ends here
