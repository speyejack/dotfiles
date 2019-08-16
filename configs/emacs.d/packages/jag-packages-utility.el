;;; jag-packages-utility.el ---

;;; Commentary:

;;; Code:

;; ace-link
;;
;; Quickly follow links
;;
;; Source: https://github.com/abo-abo/ace-link

(use-package ace-link
  :general
  (jag--leader-def "a" 'ace-link)
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

;; TODO Find better way to defer package
(use-package anzu
  :defer 15
  :config
  (global-anzu-mode +1)
  :diminish)

;; avy
;;
;; Jump to arbitrary positions in visible text and select text quickly.
;;
;; Source: https://github.com/abo-abo/avy

(use-package avy
  :disabled t
  :diminish)

;; desktop
;;
;; Saves previous session
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html

(use-package desktop
  :disabled t
  :diminish)

;; ediff
;;
;; Easy diff between two files
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/ediff/

(use-package ediff
  :general
  (jag--leader-def "A" 'ediff)
  :diminish)

;; esh-help
;;
;; Add some help functions and support for Eshell
;;
;; Source: https://github.com/tom-tan/esh-help

(use-package esh-help
  :disabled t
  :diminish)

;; eshell
;;
;; Adds several helpful functions to eShell
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_mono/eshell.html

(use-package eshell
  :disabled t
  :diminish)

;; exec-path-from-shell
;;
;; Get environment variables such as $PATH from the shell
;;
;; Source: https://github.com/purcell/exec-path-from-shell

(use-package exec-path-from-shell
  :disabled t
  :diminish)

;; eyebrowse
;;
;; Easy window config switching
;;
;; Source: https://github.com/wasamasa/eyebrowse

(use-package eyebrowse
  :disabled t
  :diminish)

;; fancy-battery
;;
;; Fancy battery display
;;
;; Source: https://github.com/lunaryorn/fancy-battery.el

(use-package fancy-battery
  :disabled t
  :diminish
  :config
  (fancy-battery-mode)
  (setq fancy-battery-show-percentage 1))

;; fasd
;;
;; Emacs integration for the command-line productivity booster `fasd'
;;
;; Source: https://github.com/steckerhalter/emacs-fasd

(use-package fasd
  :disabled t
  :diminish)

;; floobits
;;
;; Floobits plugin for real-time collaborative editing
;;
;; Source: https://github.com/Floobits/floobits-emacs

(use-package floobits
  :disabled t
  :diminish)

;; fuzzy
;;
;; Fuzzy Matching
;;
;; Source: https://github.com/auto-complete/fuzzy-el

(use-package fuzzy
  :disabled t
  :diminish)

;; hide-comnt
;;
;; Allows user to hide comments
;;
;; Source: https://www.emacswiki.org/emacs/HideOrIgnoreComments#toc1

(use-package hide-comnt
  :disabled t
  :diminish)

;; hydra
;;
;; Make bindings that stick around.
;;
;; Source: https://github.com/abo-abo/hydra

(use-package hydra
  :disabled t
  :diminish)

;; link-hint
;;
;; Use avy to open, copy, etc. visible links.
;;
;; Source: https://github.com/noctuid/link-hint.el

(use-package link-hint
  :disabled t
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
  :general (jag--leader-def "t" 'open-junk-file)
  :diminish
  :config
  (setq open-junk-file-directory (concat user-emacs-directory "junk/%Y/%m/%d-%H%M%S.")))

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
  :disabled t
  :diminish
  :config
  (popwin-mode 1))

;; pos-tip
;;
;; Show tooltip at point
;;
;; Source: https://github.com/pitkali/pos-tip

(use-package pos-tip
  :disabled t
  :diminish)

;; projectile
;;
;; Manage and navigate projects in Emacs easily
;;
;; Source: https://github.com/bbatsov/projectile

(use-package projectile
  :commands (projectile-find-file projectile-switch-project)
  :diminish
  :init
  (defvar jag--projectile-keys (make-sparse-keymap)
    "Key map for projectile")
  (define-key jag--projectile-keys (kbd "p") 'helm-projectile-switch-project)
  (define-key jag--projectile-keys (kbd "f") 'helm-projectile-find-file)
  (define-key global-map (kbd "<projectile>") jag--projectile-keys)
  :config
  (setq projectile-completion-system 'helm)
  (projectile-mode 1))

;; restart-emacs
;;
;; Restart emacs from within emacs
;;
;; Source: https://github.com/iqbalansari/restart-emacs

(use-package restart-emacs
  :general
  (jag--leader-def "!" 'restart-emacs)
  :commands 'restart-emacs
  :diminish)

;; spray
;;
;; a speed reading mode
;;
;; Source: https://gitlab.com/iankelling/spray

(use-package spray
  :disabled t
  :diminish)

;; tiny-menu
;;
;; Display tiny menus.
;;
;; Source: https://github.com/aaronbieber/tiny-menu.el

(use-package tiny-menu
  :disabled t
  :diminish)

;; virtualenvwrapper
;;
;; a featureful virtualenv tool for Emacs
;;
;; Source: https://github.com/porterjamesj/virtualenvwrapper.el

(use-package virtualenvwrapper
  :disabled t
  :diminish)

;; wgrep-ag
;;
;; Writable ag buffer and apply the changes to files
;;
;; Source: https://github.com/mhayashi1120/Emacs-wgrep

(use-package wgrep-ag
  :disabled t
  :diminish)

;; which-key
;;
;; Display available keybindings in popup
;;
;; Source: https://github.com/justbur/emacs-which-key

(use-package which-key
  :demand
  :diminish
  :config
  (which-key-mode))

;; winum
;;
;; Navigate windows and frames using numbers.
;;
;; Source: https://github.com/deb0ch/emacs-winum

(use-package winum
  :disabled t
  :diminish)

;; ycmd
;;
;; emacs bindings to the ycmd completion server
;;
;; Source: https://github.com/abingham/emacs-ycmd

(use-package ycmd
  :disabled t
  :diminish)

;; zeal-at-point
;;
;; Search the word at point with Zeal
;;
;; Source: https://github.com/jinzhu/zeal-at-point

(use-package zeal-at-point
  :disabled t
  :diminish)

;; zoom-frm
;;
;; Zoom font size
;;
;; Source: https://github.com/emacsmirror/zoom-frm

(use-package zoom-frm
  :disabled t
  :diminish)

(provide 'jag-packages-utility)
;;; jag-packages-utility.el ends here
