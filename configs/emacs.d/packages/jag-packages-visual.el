;;; jag-packages-visual.el ---

;;; Commentary:

;;; Code:

;; all-the-icons
;;
;; A library for inserting Developer icons
;;
;; Source: https://github.com/domtronn/all-the-icons.el

(use-package all-the-icons
  :disabled t
  :diminish)

;; all-the-icons-dired
;;
;; Shows icons for each file in dired mode
;;
;; Source: https://github.com/jtbm37/all-the-icons-dired

(use-package all-the-icons-dired
  :disabled t
  :diminish)

;; auto-highlight-symbol
;;
;; Automatic highlighting current symbol minor mode
;;
;; Source: https://github.com/gennad/auto-highlight-symbol

(use-package auto-highlight-symbol
  :disabled t
  :commands 'auto-highlight-symbol-mode
  :diminish
  :config
  (add-hook 'prog-mode-hook 'auto-highlight-symbol-mode))

;; centered-cursor-mode
;;
;; cursor stays vertically centered
;;
;; Source: https://github.com/andre-r/centered-cursor-mode.el

(use-package centered-cursor-mode
  :diminish
  :defer 1
  :general
  (jag--visual-leader-def "c" 'centered-cursor-mode)
  :config
  (global-centered-cursor-mode))

;; column-enforce-mode
;;
;; Highlight text that extends beyond a  column
;;
;; Source: https://github.com/jordonbiondo/column-enforce-mode

 (use-package column-enforce-mode
   :defer 15
   :general
   (jag--visual-leader-def "C" 'column-number-mode)
   :diminish
   :config
   (setq column-enforce-column 120)
   (global-column-enforce-mode t))

;; diff-hl
;;
;; Highlight uncommitted changes using VC
;;
;; Source: https://github.com/dgutov/diff-hl

(use-package diff-hl
  :diminish
  :defer 15
  :general
  (jag--visual-leader-def "d" 'global-diff-hl-mode)
  :config
  (global-diff-hl-mode))

;; golden-ratio
;;
;; Automatic resizing of Emacs windows to the golden ratio
;;
;; Source: https://github.com/roman/golden-ratio.el

(use-package golden-ratio
  :diminish
  :general
  (jag--visual-leader-def "g" 'golden-ratio-mode)
  :config
  (add-to-list 'golden-ratio-exclude-buffer-names " *MINIMAP*"))

;; highlight-numbers
;;
;; Highlight numbers in source code
;;
;; Source: https://github.com/Fanael/highlight-numbers

(use-package highlight-numbers
  :defer 15
  :diminish
  :general
  (jag--visual-leader-def "n" 'highlight-numbers-mode)
  :config
  (add-hook 'prog-mode-hook 'highlight-numbers-mode))

;; highlight-parentheses
;;
;; highlight surrounding parentheses
;;
;; Source: https://github.com/tsdh/highlight-parentheses.el

(use-package highlight-parentheses
  :diminish
  :defer 5
  :general
  (jag--visual-leader-def "p" 'highlight-parentheses-mode)
  :config
  (global-highlight-parentheses-mode))

;; highlight-symbol
;;
;; automatic and manual symbol highlighting
;;
;; Source: https://github.com/nschum/highlight-symbol.el

(use-package highlight-symbol
  :disabled t
  :diminish
  :defer 15
  :general
  (jag--visual-leader-def "N" 'auto-highlight-symbol-mode)
  :config
  (add-hook 'prog-mode-hook 'auto-highlight-symbol-mode))

;; hl-todo
;;
;; highlight TODO and similar keywords
;;
;; Source: https://github.com/tarsius/hl-todo

(use-package hl-todo
  :diminish
  :defer 15
  :general
  (jag--visual-leader-def "t" 'hl-todo-mode)
  :config
  (global-hl-todo-mode))

;; imenu-list
;;
;; Show imenu entries in a separate buffer
;;
;; Source: https://github.com/bmag/imenu-list

(use-package imenu-list
  :general
  (jag--visual-leader-def "i" 'imenu-list-smart-toggle)
  :diminish)

;; minimap
;;
;; Adds a minimap as a sidebar
;;
;; Source: https://github.com/dengste/minimap

(use-package minimap
  :commands 'minimap-mode
  :general
  (jag--visual-leader-def "m" 'minimap-mode)
  :diminish
  :config
  (setq minimap-width-fraction 0.10)
  (setq minimap-minimum-width 15)
  (setq minimap-window-location 'right))

;; nlinum-relative
;;
;; Relative line number with nlinum
;;
;; Source: https://github.com/CodeFalling/nlinum-relative

(use-package nlinum-relative
  :defer 15
  :general
  (jag--visual-leader-def "n" 'nlinum-relative-mode)
  :diminish
  :config
  (global-nlinum-relative-mode t)
  (nlinum-relative-setup-evil))

;; rainbow-delimiters
;;
;; Highlight brackets according to their depth
;;
;; Source: https://github.com/Fanael/rainbow-delimiters

(use-package rainbow-delimiters
  :general
  (jag--visual-leader-def "r" 'rainbow-delimiters-mode)
  :diminish)

;; rainbow-mode
;;
;; Colorize color names
;;
;; Source: https://github.com/emacsmirror/rainbow-mode

(use-package rainbow-mode
  :diminish
  :defer 15
  :general
  (jag--visual-leader-def "R" 'rainbow-mode)
  :config
  (add-hook 'prog-mode-hook 'rainbow-mode))

;; volatile-highlights
;;
;; Minor mode for visual feedback on some operations.
;;
;; Source: https://github.com/k-talo/volatile-highlights.el

(use-package volatile-highlights
  :diminish
  :defer 5
  :general
  (jag--visual-leader-def "v" 'volatile-highlights-mode)
  :config
  (volatile-highlights-mode t))

;; visual-line-mode
;;
;; Enables visual line mode
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Visual-Line-Mode.html

(diminish 'visual-line-mode)
(add-hook 'prog-mode-hook 'visual-line-mode)
(jag--visual-leader-def "w" 'visual-line-mode)
(general-define-key
 :keymaps 'visual-line-mode-map
 [remap evil-next-line] 'evil-next-visual-line
 [remap evil-previous-line] 'evil-previous-visual-line)

(provide 'jag-packages-visual)
;;; jag-packages-visual.el ends here
