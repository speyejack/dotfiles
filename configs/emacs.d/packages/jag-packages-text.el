;;; jag-packages-text.el ---

;;; Commentary:

;;; Code:

;; aggressive-indent
;;
;; Minor mode to aggressively keep your code always indented
;;
;; Source: https://github.com/Malabarba/aggressive-indent-mode

(use-package aggressive-indent
  :diminish
  :defer 5
  :config
  (aggressive-indent-global-mode 1))

;; auto-yasnippet
;;
;; Quickly create disposable yasnippets
;;
;; Source: https://github.com/abo-abo/auto-yasnippet

;; (use-package auto-yasnippet
;;   :general
;;   (jag--leader-def
;;     "Y" '(:wk "yasnippet")
;;     "Yy" 'aya-create
;;     "YY" 'aya-create
;;     "Ye" 'aya-expand
;;     "Yp" 'aya-expand
;;     "Yl" 'aya-open-line
;;     "Ys" 'aya-persist-snippet)
;;   :config
;;   (setq aya-case-fold t)
;;   :diminish)

;; clean-aindent-mode
;;
;; Simple indent and unindent, trims indent white-space
;;
;; Source: https://github.com/pmarinov/clean-aindent-mode

(use-package clean-aindent-mode
  :disabled t
  :diminish)

;; expand-region
;;
;; Increase selected region by semantic units.
;;
;; Source: https://github.com/magnars/expand-region.el

(use-package expand-region
  :commands 'er/expand-region
  :general
  (jag--leader-def
    "v" 'er/expand-region)
  :diminish)

;; indent-guide
;;
;; show vertical lines to guide indentation
;;
;; Source: https://github.com/zk-phi/indent-guide

(use-package indent-guide
  :diminish
  :defer 5
  :config
  (indent-guide-global-mode))

;; lorem-ipsum
;;
;; Insert dummy pseudo Latin text.
;;
;; Source: https://github.com/jschaf/emacs-lorem-ipsum

(use-package lorem-ipsum
  :disabled t
  :diminish)

;; move-text
;;
;; Move current line or region with M-up or M-down.
;;
;; Source: https://github.com/emacsfodder/move-text

(use-package move-text
  :disabled t
  :diminish)

;; origami
;;
;; Flexible text folding
;;
;; Source: https://github.com/gregsexton/origami.el

(use-package origami
  :disabled t
  :diminish)

;; semantic
;;
;; Allows for language aware editing
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Semantic.html

(use-package semantic
  :diminish
  :defer 15
  :config
  ;; (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
  (semantic-mode 1))

;; srefactor
;;
;; A refactoring tool based on Semantic parser framework
;;
;; Source: https://github.com/tuhdo/semantic-refactor

(use-package srefactor
  :diminish
  :general
  (jag--leader-def "r" 'srefactor-refactor-at-point)
  :config
  (semantic-mode 1))

;; ws-butler
;;
;; Unobtrusively remove trailing whitespace.
;;
;; Source: https://github.com/lewang/ws-butler

(use-package ws-butler
  :diminish
  :defer 5
  :config
  (ws-butler-global-mode 1))

;; yasnippet
;;
;; Yet another snippet extension for Emacs.
;;
;; Source: https://github.com/joaotavora/yasnippet

;; (use-package yasnippet
;;   :diminish
;;   :general
;;   (jag--leader-def "y" 'yas-expand)
;;   :config
;;   (yas-global-mode 1))

(provide 'jag-packages-text)
;;; jag-packages-text.el ends here
