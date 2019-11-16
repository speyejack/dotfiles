;;; jag-keys-help.el --- Help key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The help key bindings used throughout Emacs

;;; Code:

;; Create the help leader definer

(jag-create-sub-leader-map jag-leader-map "h" "help")

(use-package jag-funcs-help
  :ensure nil
  :bind
  (:map jag-help-map
   ("b" . 'helm-descbinds)
   ("d" . 'helm-man-woman)
   ("h" . 'helm-apropos)
   ("y" . 'jag-display-and-copy-emacs-version)
   ("c" . 'describe-char)
   ("e" . 'evil-tutor-resume)
   ("E" . 'evil-tutor-start)
   ("f" . 'describe-function)
   ("k" . 'describe-key)
   ("K" . 'jag-describe-keymap)
   ("l" . 'jag-describe-last-keys)
   ("p" . 'describe-package)
   ("s" . 'jag-describe-system-info)
   ("t" . 'describe-theme)
   ("m" . 'describe-mode)
   ("v" . 'describe-variable)
   ("N" . 'view-emacs-news)))


(provide 'jag-keys-help)

;;; jag-keys-help.el ends here
