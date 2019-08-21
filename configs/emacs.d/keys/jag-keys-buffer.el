;;; jag-keys-buffer.el --- Buffer key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The buffer key bindings used throughout Emacs

;;; Code:

;; Create the buffer leader definer
(general-create-definer jag--buffer-leader-def
  :which-key "Buffer leader prefix"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " b")
  :global-prefix (concat jag-emacs-leader-key " b"))

(use-package jag-funcs-buffer
  :ensure nil
  :commands (jag-force-kill-this-buffer))

(jag--buffer-leader-def
 "b" 'helm-mini
 "c" 'clone-indirect-buffer-other-window
 "C" 'clone-buffer
 "d" 'kill-this-buffer
 "D" 'jag-force-kill-this-buffer
 "m" '(:wk "modes")
 "mm" 'helm-switch-major-mode
 "me" 'helm-enable-minor-mode
 "md" 'helm-disable-minor-mode)

(provide 'jag-keys-buffer)

;;; jag-keys-buffer.el ends here
