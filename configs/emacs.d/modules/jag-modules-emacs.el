;;; jag-modules-emacs.el --- Emacs module

;;; Commentary:
;; Modules that control the look and meta operation of emacs

;;; Code:

;; diminish
;;
;; Diminished modes are minor modes with no modeline display
;;
;; Source: https://github.com/myrjola/diminish.el

(use-package diminish
  :diminish
  :config
  (diminish 'eldoc-mode))

;; powerline
;;
;; Rewrite of Powerline
;;
;; Source: https://github.com/milkypostman/powerline

(use-package powerline
  :diminish
  :demand
  :config
  (setq powerline-default-separator 'wave))

;; powerline-evil
;;
;; Utilities for better Evil support for Powerline
;;
;; Source: https://github.com/raugturi/powerline-evil

(use-package powerline-evil
  :diminish
  :demand
  :config
  (powerline-default-theme))

;; solarized-theme
;;
;; The Solarized color theme, ported to Emacs.
;;
;; Source: https://github.com/bbatsov/solarized-emacs

(use-package solarized-theme
  :diminish
  :demand
  :config
  (load-theme 'solarized-dark t))

;; smart-tabs
;;
;; Smarter indentation with mixed tabs and spaces
;;
;; Source: https://github.com/jcsalomon/smarttabs

(use-package smart-tabs-mode
  :init
  :demand
  (smart-tabs-insinuate'c 'javascript 'c++ 'java 'python 'nxml)
  :diminish)

(provide 'jag-modules-emacs)
;;; jag-modules-emacs.el ends here
