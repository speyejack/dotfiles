;;; jag-keys-buffer.el --- Buffer key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The buffer key bindings used throughout Emacs

;;; Code:

;; Create the buffer leader definer
(general-create-definer jag--buffer-leader-def
  :which-key "Buffer leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " b")
  :global-prefix (concat jag-emacs-leader-key " b"))

(use-package jag-funcs-buffer
  :ensure nil
  :general
  (jag--buffer-leader-def
	"B" 'mode-line-other-buffer
	"b" 'helm-mini
	"C" 'clone-buffer
	"c" 'clone-indirect-buffer-other-window
	"D" 'jag-force-kill-this-buffer
	"d" 'kill-this-buffer
	"e" 'jag-safe-erase-buffer
	"i"  'ibuffer
	"m" '(:wk "modes")
	"md" 'helm-disable-minor-mode
	"me" 'helm-enable-minor-mode
	"mm" 'helm-switch-major-mode
	"N" 'jag-new-empty-buffer
	"n" 'next-buffer
	"o" 'jag-kill-other-buffers
	"P" 'jag-copy-clipboard-to-whole-buffer
	"p" 'previous-buffer
	"R" 'jag-force-revert-buffer
	"r" 'jag-safe-revert-buffer
	"s" 'jag-switch-to-scratch-buffer
	"w" 'read-only-mode
	"Y" 'jag-copy-clipboard-to-whole-buffer))


(provide 'jag-keys-buffer)

;;; jag-keys-buffer.el ends here
