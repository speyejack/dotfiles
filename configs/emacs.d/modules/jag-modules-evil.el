;;; jag-modules-evil.el --- Evil modules

;;; Commentary:
;; All the evil packages

;;; Code:

(use-package jag-funcs-evil
  :defer t
  :ensure nil
  :commands (jag-evil-reformat-buffer
			 jag-goto-middle-of-line
			 jag-evil-next-visual-line-5
			 jag-evil-previous-visual-line-5))

;; evil
;;
;; Extensible Vi layer for Emacs.
;;
;; Source: https://github.com/emacs-evil/evil

(use-package evil
  :demand
  :diminish
  :init
  (setq evil-want-integration t)
  (setq evil-respect-visual-line-mode t)

  :custom
 (evil-want-Y-yank-to-eol t "Make Y yank full lines")

  :config
  (evil-define-key '(normal visual motion) 'global
	(kbd "SPC") jag-leader-map)

  ;; / searches have all the magic characters
  (setq evil-magic 'very-magic)

  ;; * and # search using symbols.
  (setq-default evil-symbol-word-search t)


  ;; evil-want-Y-yank-to-eol must be set via customize to have an effect.
  (customize-set-variable 'evil-want-Y-yank-to-eol t)

  ;; http://emacs.stackexchange.com/questions/14940
  (fset 'evil-visual-update-x-selection 'ignore)

  ;; Prevents esc-key from translating to meta-key in terminal mode.
  (setq evil-esc-delay 0)

  ;; Major modes that should default to an insert state.
  (add-to-list 'evil-insert-state-modes 'git-commit-mode)

  ;; TODO Determine what this does
  ;;(remove 'doc-view-mode evil-emacs-state-modes)

  (evil-mode 1)

  :general
  (:states '(motion normal visual operator)
   "C-j"  'scroll-down-command
   "C-k"  'scroll-up-command
   "J"  'jag-evil-next-visual-line-5
   "K"  'jag-evil-previous-visual-line-5
   "gh" 'evil-first-non-blank-of-visual-line
   "gm" 'jag-goto-middle-of-line
   "gH" 'evil-beginning-of-visual-line
   "gl" 'evil-end-of-visual-line
   "gJ" 'evil-join)
  ;; Handles visual mode inconsistencies
  (:states '(motion normal visual)
   "<remap> <evil-next-line>"  'evil-next-visual-line
   "<remap> <evil-previous-line>"  'evil-previous-visual-line)
  (:states '(operator)
   "<remap> <evil-next-line>"  'evil-next-line
   "<remap> <evil-previous-line>"  'evil-previous-line)
  (:keymaps 'minibuffer-inactive-mode-map
	"M-h" 'left-char
	"M-l" 'right-char
	"M-j" 'next-complete-history-element
	"M-k" 'previous-complete-history-element))

;; undo-tree
;;
;; Vim undo tree
;;
;; Source: https://www.emacswiki.org/emacs/UndoTree

(use-package undo-tree
  :general
  (:states 'motion
   "u"   'undo-tree-undo
   "U"   'undo-tree-redo)
  (:keymaps 'undo-tree-visualizer-mode-map
   :states 'motion
   "h" 'undo-tree-visualize-switch-branch-left
   "l" 'undo-tree-visualize-switch-branch-right
   "j" 'undo-tree-visualize-redo
   "k" 'undo-tree-visualize-undo)
  :diminish 'undo-tree-mode)

;; evil-escape
;;
;; Escape from anything with a customizable key sequence
;;
;; Source: https://github.com/syl20bnr/evil-escape

(use-package evil-escape
  :commands (evil-escape-pre-command-hook)
  :diminish
  :after evil
  :init
  (add-hook 'pre-command-hook 'evil-escape-pre-command-hook)
  (setq-default evil-escape-key-sequence "jk")
  (setq evil-escape-unordered-key-sequence 1))

;; evil-magit
;;
;; evil-based key bindings for magit
;;
;; Source: https://github.com/emacs-evil/evil-magit

(use-package evil-magit
  :after (evil magit))



;; evil-collection
;;
;; A set of keybindings for evil-mode
;;
;; Source: https://github.com/emacs-evil/evil-collection

(use-package evil-collection
  :defer t
  :diminish
  :disabled t
  :after evil
  :init
  (setq evil-collection-setup-minibuffer t)
  (evil-collection-init))

;; evil-extra-operator
;;
;; An extra set of operators used with evil
;;
;; Source: https://github.com/Dewdrops/evil-extra-operator

(use-package evil-extra-operator
  :defer t
  :custom
  (evil-extra-operator-eval-modes-alist
   '((elisp-mode eval-region)
	 (scheme-mode geiser-eval-region)
	 (clojure-mode cider-eval-region)
	 (ruby-mode ruby-send-region)
	 (enh-ruby-mode ruby-send-region)
	 (python-mode python-shell-send-region)
	 (julia-mode julia-shell-run-region)))
  :config
  (evil-define-key 'normal global-map
  	"gs" 'evil-operator-fold
  	"gV" 'evil-operator-highlight
  	"go" 'evil-operator-org-capture
  	"gR" 'evil-operator-remember))

;; evil-args
;;
;; Motions and text objects for delimited arguments in Evil.
;;
;; Source: https://github.com/wcsmith/evil-args

(use-package evil-args
  :diminish
  ;; bind evil-args text objects
  :bind (:map evil-inner-text-objects-map
         ("a" . evil-inner-arg)
         :map evil-outer-text-objects-map
         ("a" . evil-outer-arg))
  :after evil)

;; evil-commentary
;;
;; Comment stuff out. A port of vim-commentary.
;;
;; Source: https://github.com/linktohack/evil-commentary

(use-package evil-commentary
  :diminish
  :commands (evil-commentary evil-commentary-yank)
  :init
  :general
  (:states 'motion
   "gc" 'evil-commentary
   "gy" 'evil-commentary))

;; evil-exchange
;;
;; Exchange text more easily within Evil
;;
;; Source: https://github.com/Dewdrops/evil-exchange

(use-package evil-exchange
  :commands (evil-exchange evil-exchange-cancel)
  :general
  (:states '(motion normal visual operator)
   "gx" 'evil-exchange
   "gX" 'evil-exchange-cancel))

;; evil-goggles
;;
;; Add a visual hint to evil operations
;;
;; Source: https://github.com/edkolev/evil-goggles

(use-package evil-goggles
  :defer 3
  :diminish
  :after evil
  :config
  (setq evil-goggles-duration 0.06)
  (evil-goggles-mode))

;; evil-matchit
;;
;; Vim matchit ported to Evil
;;
;; Source: https://github.com/redguardtoo/evil-matchit

(use-package evil-matchit
  :commands 'evilmi-jump-items
  :diminish
  :after evil
  :general
  (:states 'motion
   "%" 'evilmi-jump-items))

;; evil-surround
;;
;; emulate surround.vim from Vim
;;
;; Source: https://github.com/emacs-evil/evil-surround

(use-package evil-surround
  :diminish
  :bind (:map evil-operator-state-map
         ("s" . evil-surround-edit)
		 ("S" . evil-Surround-edit)
		 :map evil-visual-state-map
         ("S" . evil-surround-edit)
		 ("gS" . evil-Surround-edit))
  :after evil)

;; evil-tutor
;;
;; Vimtutor adapted to Evil and wrapped in a major-mode
;;
;; Source: https://github.com/syl20bnr/evil-tutor

(use-package evil-tutor
  :diminish
  :commands (evil-tutor-start evil-tutor-resume)
  :after evil)

;; evil-anzu
;;
;; anzu for evil-mode
;;
;; Source: https://github.com/syohex/emacs-evil-anzu

(use-package evil-anzu
  :after (evil anzu))

;; evil-cleverparens
;;
;; Evil friendly minor-mode for editing lisp.
;;
;; Source: https://github.com/luxbock/evil-cleverparens

(use-package evil-cleverparens
  :disabled t
  :commands 'evil-cleverparens-mode
  :diminish
  :after evil
  :init
  (add-hook 'elisp-mode-hook 'evil-cleverparens-mode)
  (add-hook 'lisp-mode-hook 'evil-cleverparens-mode)
  (add-hook 'scheme-mode-hook 'evil-cleverparens-mode))

;; evil-ediff
;;
;; Make ediff a little evil
;;
;; Source: https://github.com/emacs-evil/evil-ediff

(use-package evil-ediff
  :diminish
  :after (evil ediff)
  :config
  (evil-ediff-init))

;; evil-iedit-state
;;
;; Evil states to interface iedit mode.
;;
;; Source: https://github.com/syl20bnr/evil-iedit-state

(use-package evil-iedit-state
  :commands (evil-iedit-state/iedit-mode evil-iedit-state)
  :diminish
  :after evil)

;; evil-indent-plus
;;
;; Evil textobjects based on indentation
;;
;; Source: https://github.com/TheBB/evil-indent-plus

(use-package evil-indent-plus
  :diminish
  :after evil
  :bind(:map evil-inner-text-objects-map
		("i" . evil-indent-plus-i-indent)
		("I" . evil-indent-plus-i-indent-up)
		("J" . evil-indent-plus-i-indent-up-down)
		:map evil-outer-text-objects-map
		("i" . evil-indent-plus-a-indent)
		("I" . evil-indent-plus-a-indent-up)
		("J" . evil-indent-plus-a-indent-up-down)))

;; evil-mc
;;
;; Multiple cursors for evil-mode
;;
;; Source: https://github.com/gabesoft/evil-mc

(use-package evil-mc
  :general
  (:states 'motion
   "gr"  '(:which-key "multiple-cursors")
   "grh" 'evil-mc-make-cursor-here
   "grj" 'evil-mc-make-cursor-move-next-line
   "grk" 'evil-mc-make-cursor-move-prev-line
   "grp" 'evil-mc-pause-cursors
   "grr" 'evil-mc-resume-cursors
   "grq" 'evil-mc-undo-all-cursors
   "gru" 'evil-mc-undo-last-added-cursor
   "grm" 'evil-mc-make-all-cursors)
  :diminish
  :after evil
  :config
  (evil-mc-initialize))

;; evil-numbers
;;
;; increment/decrement numbers like in vim
;;
;; Source: https://github.com/cofi/evil-numbers

(use-package evil-numbers
  :commands (evil-numbers/inc-at-pt evil-numbers/dec-at-pt)
  :diminish
  :after evil
  :config)

;; evil-terminal-cursor-changer
;;
;; Change cursor shape and color by evil state in terminal
;;
;; Source: https://github.com/7696122/evil-terminal-cursor-changer

(use-package evil-terminal-cursor-changer
  :disabled t
  :diminish
  :after evil)

;; evil-visual-mark-mode
;;
;; Display evil marks on buffer
;;
;; Source: https://github.com/roman/evil-visual-mark-mode

(use-package evil-visual-mark-mode
  :diminish
  :commands (evil-visual-mark-mode)
  :after evil)

;; evil-visualstar
;;
;; Starts a * or # search from the visual selection
;;
;; Source: https://github.com/bling/evil-visualstar

(use-package evil-visualstar
  :diminish
  :general
  (:states 'visual
   "*"  'evil-visualstar/begin-search-forward
   "#"  'evil-visualstar/begin-search-backward)
  :after evil)

(provide 'jag-modules-evil)
;;; jag-modules-evil.el ends here
