;;; jag-modules-evil.el ---

;;; Commentary:

;;; Code:

;; evil
;;
;; Extensible Vi layer for Emacs.
;;
;; Source: https://github.com/emacs-evil/evil

(use-package evil
  :init (setq evil-want-integration nil)
  :diminish
  :general
  (:states 'normal
   "gh" 'evil-first-non-blank
   "gl" 'evil-end-of-line
   "-"  'helm-find-files
   "R"  'undo-tree-redo)
  (jag--leader-def
    "=" '((lambda () (interactive)
          (save-excursion
            (evil-indent (point-min) (point-max)))) :which-key "reformat-buffer")
    "'" 'evil-save-modified-and-close
    "q" 'evil-quit
    "w" 'evil-window-map)
  :config
  (setq evil-magic 'very-magic)
  (remove 'doc-view-mode evil-emacs-state-modes)
  (evil-mode 1))

;; undo-tree
;;
;; Vim undo tree
;;
;; Source: https://www.emacswiki.org/emacs/UndoTree

(use-package undo-tree
  :general
  (:states 'normal
   "u"   'undo-tree-undo
   "C-r" 'undo-tree-redo)
  (:keymaps 'undo-tree-visualizer-mode-map
   [remap evil-backward-char] 'undo-tree-visualize-switch-branch-left
   [remap evil-forward-char]  'undo-tree-visualize-switch-branch-right
   [remap evil-next-line]     'undo-tree-visualize-redo
   [remap evil-previous-line] 'undo-tree-visualize-undo)
  (jag--leader-def "u" 'undo-tree-visualize)
  :diminish)

;; evil-escape
;;
;; Escape from anything with a customizable key sequence
;;
;; Source: https://github.com/syl20bnr/evil-escape

(use-package evil-escape
  :diminish
  :after evil
  :config
  (setq-default evil-escape-key-sequence "jk")
  (setq evil-escape-unordered-key-sequence 1)
  (evil-escape-mode 1))

;; evil-org
;;
;; evil keybindings for org-mode
;;
;; Source: https://github.com/Somelauw/evil-org-mode

(use-package evil-org
  :diminish
  :after (evil org)
  :hook (org-mode . evil-org-mode)
  :config
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading)))))

;; evil-magit
;;
;; evil-based key bindings for magit
;;
;; Source: https://github.com/emacs-evil/evil-magit

(use-package evil-magit
  :after (evil magit)
  :init
  (add-hook 'magit-mode-hook 'evil-local-mode))

;; evil-collection
;;
;; A set of keybindings for evil-mode
;;
;; Source: https://github.com/emacs-evil/evil-collection

(use-package evil-collection
  :diminish
  :disabled t
  :after evil
  :init
  (setq evil-collection-setup-minibuffer t)
  (evil-collection-init))

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
  :bind (:map evil-normal-state-map
         ("gc" . evil-commentary))
  :after evil
  :config
  (evil-commentary-mode 1))

;; evil-exchange
;;
;; Exchange text more easily within Evil
;;
;; Source: https://github.com/Dewdrops/evil-exchange

(use-package evil-exchange
  :general
  (jag--leader-def "e" 'evil-exchange)
  :diminish
  :after evil)

;; evil-goggles
;;
;; Add a visual hint to evil operations
;;
;; Source: https://github.com/edkolev/evil-goggles

(use-package evil-goggles
  :diminish
  :defer 10
  :after evil
  :config
  (evil-goggles-mode))

;; evil-matchit
;;
;; Vim matchit ported to Evil
;;
;; Source: https://github.com/redguardtoo/evil-matchit

(use-package evil-matchit
  :commands 'evil-jump-item
  :bind (:map evil-motion-state-map
         ("%" . evilmi-jump-items))
  :diminish
  :after evil
  :config
  (global-evil-matchit-mode 1))

;; evil-nerd-commenter
;;
;; Comment/uncomment lines efficiently. Like Nerd Commenter in Vim
;;
;; Source: https://github.com/redguardtoo/evil-nerd-commenter

(use-package evil-nerd-commenter
  :disabled t
  :diminish
  :after evil)

;; evil-surround
;;
;; emulate surround.vim from Vim
;;
;; Source: https://github.com/emacs-evil/evil-surround

(use-package evil-surround
  :diminish
  :bind (:map evil-motion-state-map
         ("s" . evil-surround-edit))
  :after evil
  :config
  (global-evil-surround-mode 1))

;; evil-tutor
;;
;; Vimtutor adapted to Evil and wrapped in a major-mode
;;
;; Source: https://github.com/syl20bnr/evil-tutor

(use-package evil-tutor
  :diminish
  :commands evil-tutor-start
  :after evil)

;; evil-anzu
;;
;; anzu for evil-mode
;;
;; Source: https://github.com/syohex/emacs-evil-anzu

(use-package evil-anzu
  :after anzu)

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
  (add-hook 'scheme-mode-hook 'evil-cleverparens-mode)
  :config
  (evil-cleverparens-mode 1))

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
  :disabled t
  :commands 'iedit-mode
  :diminish
  :after evil)

;; evil-indent-plus
;;
;; Evil textobjects based on indentation
;;
;; Source: https://github.com/TheBB/evil-indent-plus

(use-package evil-indent-plus
  :disabled t
  :diminish
  :after evil
  :config
  (evil-indent-plus-default-bindings))

;; evil-lisp-state
;;
;; An evil state to edit Lisp code
;;
;; Source: https://github.com/syl20bnr/evil-lisp-state

(use-package evil-lisp-state
  :disabled t
  :commands 'evil-lisp-state
  :diminish
  :after evil)

;; evil-mc
;;
;; Multiple cursors for evil-mode
;;
;; Source: https://github.com/gabesoft/evil-mc

(use-package evil-mc
  :commands (evil-mc-make-cursor-here
             evil-mc-make-all-cursors
             evil-mc-make-cursor-move-next-line
             evil-mc-make-cursor-move-prev-line)
  :general
  (jag--leader-def
    "i" '(:which-key "multiple-cursors")
    "ih" 'evil-mc-make-cursor-here
    "ij" 'evil-mc-make-cursor-move-next-line
    "ik" 'evil-mc-make-cursor-move-prev-line
    "ip" 'evil-mc-pause-cursors
    "ir" 'evil-mc-resume-cursors
    "iq" 'evil-mc-undo-all-cursors
    "iu" 'evil-mc-undo-last-added-cursor
    "im" 'evil-mc-make-all-cursors)
  :diminish
  :after evil
  :config
  (global-evil-mc-mode))

;; evil-numbers
;;
;; increment/decrement numbers like in vim
;;
;; Source: https://github.com/cofi/evil-numbers

(use-package evil-numbers
  :disabled t
  :diminish
  :after evil
  :config
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c =") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt))

;; evil-search-highlight-persist
;;
;; Persistent highlights after search
;;
;; Source: https://github.com/naclander/evil-search-highlight-persist

(use-package evil-search-highlight-persist
  :disabled t
  :diminish
  :after evil)

;; evil-snipe
;;
;; emulate vim-sneak & vim-seek
;;
;; Source: https://github.com/hlissner/evil-snipe

(use-package evil-snipe
  :disabled t
  :diminish
  :after evil
  :config
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode)
  (evil-snipe-mode 1))

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
  :general
  (jag--visual-leader-def "'" 'evil-visual-mark-mode)
  :after evil)

;; evil-visualstar
;;
;; Starts a * or # search from the visual selection
;;
;; Source: https://github.com/bling/evil-visualstar

(use-package evil-visualstar
  :disabled t
  :diminish
  :bind ("<visual-state> *" . evil-visualstar/begin-search-forward)
  :after evil
  :config
  (global-evil-visualstar-mode 1))

(provide 'jag-modules-evil)
;;; jag-modules-evil.el ends here
