;;; jag-keys-buffer.el --- Buffer key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The buffer key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "b" "buffer")

(jag-declare-prefixes
 '(("b" "buffer")
   ("bm" "modes")))

(use-package jag-funcs-buffer
  :ensure nil
  :bind
  (:map jag-buffer-map
	("!" . 'jag-shell-command-on-buffer)
	("B" . 'mode-line-other-buffer)
	("b" . 'helm-mini)
	("C" . 'clone-buffer)
	("c" . 'clone-indirect-buffer-other-window)
	("D" . 'jag-force-kill-this-buffer)
	("d" . 'jag-kill-this-buffer)
	("e" . 'jag-safe-erase-buffer)
	("i" .  'ibuffer)
	("md" . 'helm-disable-minor-mode)
	("me" . 'helm-enable-minor-mode)
	("mm" . 'helm-switch-major-mode)
	("N" . 'jag-new-empty-buffer)
	("n" . 'next-buffer)
	("o" . 'jag-kill-other-buffers)
	("P" . 'jag-copy-clipboard-to-whole-buffer)
	("p" . 'previous-buffer)
	("R" . 'jag-force-revert-buffer)
	("r" . 'jag-safe-revert-buffer)
	("s" . 'jag-switch-to-scratch-buffer)
	("w" . 'read-only-mode)
	("Y" . 'jag-copy-clipboard-to-whole-buffer)))

(provide 'jag-keys-buffer)

;;; jag-keys-buffer.el ends here
