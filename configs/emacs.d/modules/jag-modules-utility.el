;;; jag-modules-utility.el ---

;;; Commentary:

;;; Code:

;; ace-link
;;
;; Quickly follow links
;;
;; Source: https://github.com/abo-abo/ace-link

(use-package ace-link
  :disabled t
  :commands 'ace-link
  :diminish)

;; ag
;;
;; A front-end for ag ('the silver searcher'), the C ack replacement.
;;
;; Source: https://github.com/Wilfred/ag.el

(use-package ag
  :defer t
  :diminish)

;; anzu
;;
;; Show number of matches in mode-line while searching
;;
;; Source: https://github.com/syohex/emacs-anzu

(use-package anzu
  :defer t
  :diminish)

;; avy
;;
;; Jump to arbitrary positions in visible text and select text quickly.
;;
;; Source: https://github.com/abo-abo/avy

(use-package avy
  :commands 'avy-jump
  :init
  (setq avy-all-windows 'all-frames)
  (setq avy-background t)
  :diminish)

;; desktop
;;
;; Saves previous session
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html

(use-package desktop
  :ensure nil
  :commands (desktop-read desktop-save)
  :diminish)

;; dumb-jump
;;
;; an Emacs "jump to definition" package for 40+ languages
;;
;; Source: https://github.com/jacktasia/dumb-jump
(use-package dumb-jump
  :commands (dumb-jump-go)
  :config
  (setq dumb-jump-selector 'helm)
  :diminish)

;; eyebrowse
;;
;; Easy window config switching
;;
;; Source: https://github.com/wasamasa/eyebrowse

(use-package eyebrowse
  :disabled t
  :diminish)

;; floobits
;;
;; Floobits plugin for real-time collaborative editing
;;
;; Source: https://github.com/Floobits/floobits-emacs

(use-package floobits
  :commands 'floobits
  :diminish)

;; mmm-mode
;;
;; Allows for multiple major modes
;;
;; Source: https://github.com/purcell/mmm-mode

(use-package mmm-mode
  :disabled t
  :diminish)

;; multi-term
;;
;; Managing multiple terminal buffers in Emacs.
;;
;; Source: https://github.com/emacsorphanage/multi-term

(use-package multi-term
  :disabled t
  :diminish)

;; open-junk-file
;;
;; Open a junk (memo) file to try-and-error
;;
;; Source: https://github.com/rubikitch/open-junk-file

(use-package open-junk-file
  :commands 'open-junk-file
  :diminish
  :config
  (setq open-junk-file-directory (concat user-emacs-directory "junk/%Y-%m-%d-%H%M%S.")))

;; paradox
;;
;; Better package manager
;;
;; Source: https://github.com/Malabarba/paradox

(use-package paradox
  :diminish
  :bind
  (:map paradox-menu-mode-map
   ("j" . paradox-next-commit)
   ("k" . paradox-previous-commit)))

;; persp-mode
;;
;; windows/buffers sets shared among frames + save/load.
;;
;; Source: https://github.com/Bad-ptr/persp-mode.el

(use-package persp-mode
  :disabled t
  :diminish)

;; popwin
;;
;; Popup Window Manager.
;;
;; Source: https://github.com/m2ym/popwin-el

(use-package popwin
  :diminish
  :defer 3
  :config
  (popwin-mode 1))

;; projectile
;;
;; Manage and navigate projects in Emacs easily
;;
;; Source: https://github.com/bbatsov/projectile

(use-package projectile
  :commands (projectile-find-file projectile-switch-project)
  :diminish
  :config
  (setq projectile-completion-system 'helm)
  (projectile-mode 1))

;; quickrun
;;
;; Run command quickly. This packages is inspired quickrun.vim
;;
;; Source: https://github.com/syohex/emacs-quickrun

(use-package quickrun
  :commands (quickrun quickrun-region)
  :config
  (evil-make-overriding-map quickrun--mode-map))

;; restart-emacs
;;
;; Restart emacs from within emacs
;;
;; Source: https://github.com/iqbalansari/restart-emacs

(use-package restart-emacs
  :commands 'restart-emacs
  :diminish)

;; wgrep
;;
;; Writable grep buffer and apply the changes to files
;;
;; Source: https://github.com/mhayashi1120/Emacs-wgrep

(use-package wgrep-ag
  :defer t
  :diminish)

;; ycmd
;;
;; emacs bindings to the ycmd completion server
;;
;; Source: https://github.com/abingham/emacs-ycmd

(use-package ycmd
  :defer 2
  :diminish)

;; zeal-at-point
;;
;; Search the word at point with Zeal
;;
;; Source: https://github.com/jinzhu/zeal-at-point

(use-package zeal-at-point
  :commands 'zeal-at-point
  :config
  (setq zeal-at-point-zeal-version "0.6.0")
  :diminish)

(provide 'jag-modules-utility)
;;; jag-modules-utility.el ends here
