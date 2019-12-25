;;; jag-modes-xkcd.el --- Xkcd mode package

;;; Commentary:
;; Xkcd mode package and keybindings

;;; Code:


;; xkcd
;;
;; View xkcd from Emacs
;;
;; Source: https://github.com/vibhavp/emacs-xkcd

(use-package xkcd
  :commands 'xkcd
  :bind
  (:map xkcd-mode-map
   ("J" . 'xkcd-prev)
   ("K" . 'xkcd-next)
   ("q" . 'xkcd-kill-buffer)
   ("t" . 'xkcd-alt-text)
   ("e" . 'xkcd-open-explanation-browser)
   ("y" . 'xkcd-copy-link)
   ("O" . 'xkcd-open-browser)
   ("r" . 'xkcd-rand)
   ("g" . 'xkcd-get)
   ("L" . 'xkcd-get-latest))
  :diminish
  :config
  (evil-make-override-map xkcd-mode-map)
  (add-hook 'xkcd-mode-hook #'evil-normalize-keymaps))

(provide 'jag-modes-xkcd)
;;; jag-modes-xkcd.el ends here
