;;; jag-modules-emacs.el ---

;;; Commentary:

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
  :config
  (setq powerline-default-separator 'wave))

;; powerline-evil
;;
;; Utilities for better Evil support for Powerline
;;
;; Source: https://github.com/raugturi/powerline-evil

(use-package powerline-evil
  :diminish
  :config
  (powerline-default-theme))

;; solarized-theme
;;
;; The Solarized color theme, ported to Emacs.
;;
;; Source: https://github.com/bbatsov/solarized-emacs

(use-package solarized-theme
  :diminish
  :config
  (load-theme 'solarized-dark t))

;; spaceline
;;
;; Modeline configuration library for powerline
;;
;; Source: https://github.com/TheBB/spaceline

(use-package spaceline
  :disabled t
  :diminish
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme)
  (spaceline-toggle-global-on))

;; spaceline-all-the-icons
;;
;; A Spaceline theme using All The Icons
;;
;; Source: https://github.com/domtronn/spaceline-all-the-icons.el

(use-package spaceline-all-the-icons
  :disabled t
  :diminish
  :after spaceline
  :config
  (spaceline-all-the-icons-theme))

;; smart-mode-line
;;
;; A color coded smart mode-line.
;;
;; Source: https://github.com/Malabarba/smart-mode-line

(use-package smart-mode-line
  :disabled t
  :diminish)

;; smart-tabs
;;
;; Smarter indentation with mixed tabs and spaces
;;
;; Source: https://github.com/jcsalomon/smarttabs

(use-package smart-tabs-mode
  :init
  (smart-tabs-insinuate'c 'javascript 'c++ 'java 'python 'nxml)
  :diminish)

(provide 'jag-modules-emacs)
;;; jag-modules-emacs.el ends here
