;;; jag-modules-text.el ---

;;; Commentary:

;;; Code:

;; aggressive-indent
;;
;; Minor mode to aggressively keep your code always indented
;;
;; Source: https://github.com/Malabarba/aggressive-indent-mode

(use-package aggressive-indent
  :diminish
  :defer 1
  :commands 'aggressive-indent-mode)

;; clean-aindent-mode
;;
;; Simple indent and unindent, trims indent white-space
;;
;; Source: https://github.com/pmarinov/clean-aindent-mode

(use-package clean-aindent-mode
  :disabled t
  :diminish)

;; commify
;;
;; Emacs package for toggling commas on and off in numbers.
;;
;; Source: https://github.com/ddoherty03/commify

(use-package commify
  :diminish
  :commands 'commify-toggle)

;; expand-region
;;
;; Increase selected region by semantic units.
;;
;; Source: https://github.com/magnars/expand-region.el

(use-package expand-region
  :commands 'er/expand-region
  :diminish)

;; indent-guide
;;
;; show vertical lines to guide indentation
;;
;; Source: https://github.com/zk-phi/indent-guide

(use-package indent-guide
  :diminish
  :defer 1
  :hook ((prog-mode . indent-guide-mode))
  :config)

;; lorem-ipsum
;;
;; Insert dummy pseudo Latin text.
;;
;; Source: https://github.com/jschaf/emacs-lorem-ipsum

(use-package lorem-ipsum
  :commands (lorem-ipsum-insert-list
			 lorem-ipsum-insert-sentences
			 lorem-ipsum-insert-paragraphs)
  :diminish)

;; move-text
;;
;; Move current line or region with M-up or M-down.
;;
;; Source: https://github.com/emacsfodder/move-text

(use-package move-text
  :commands (move-text-up move-text-down)
  :diminish)

;; origami
;;
;; Flexible text folding
;;
;; Source: https://github.com/gregsexton/origami.el

(use-package origami
  :defer t
  :diminish)

;; semantic
;;
;; Allows for language aware editing
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Semantic.html

(use-package semantic
  :disabled t
  :diminish
  :commands (semantic-mode semantic-stickyfunc-mode)
  :config
  (semantic-mode 1))

;; smartparens
;;
;; Minor mode for Emacs that deals with parens pairs and tries to be smart about it.
;;
;; Source: https://github.com/Fuco1/smartparens
(use-package smartparens
  :commands 'smartparens-mode
  :diminish
  :init
  (add-hook 'prog-mode-hook 'smartparens-mode)
  (add-hook 'comint-mode 'smartparens-mode)
  :config
  (setq sp-show-pair-from-inside t
		sp-escape-quotes-after-insert nil
		sp-highlight-pair-overlay nil
		sp-highlight-wrap-overlay nil
		sp-highlight-wrap-tag-overlay nil)
  (show-smartparens-global-mode 1)

  (sp-pair "(" nil :unless '(sp-point-before-same-p sp-point-before-word-p))
  (sp-pair "{" nil :post-handlers '(("||\n[i]" "RET")))

  (dolist (mode '(julia-mode lua-mode))
	(sp-local-pair mode "function" "end" :when '(("SPC")) :post-handlers '("||\n[i]"))
	(sp-local-pair mode "if" "end" :when '(("SPC")) :post-handlers '("||\n[i]"))
	(sp-local-pair mode "for" "end" :when '(("SPC")) :post-handlers '("||\n[i]"))
	(sp-local-pair mode "while" "end" :when '(("SPC")) :post-handlers '("||\n[i]")))

  (dolist (mode '(emacs-lisp-mode minibuffer-inactive-mode lisp-mode))
	(sp-local-pair mode "'" nil :actions nil)
	(sp-local-pair mode "`" nil :actions nil)))

;; srefactor
;;
;; A refactoring tool based on Semantic parser framework
;;
;; Source: https://github.com/tuhdo/semantic-refactor

(use-package srefactor
  :diminish
  :commands 'srefactor-refactor-at-point
  :config
  (semantic-mode 1))

;; string-inflection
;;
;; Converts between foo_bar, FOO_BAR, and FooBar style of names.
;;
;; Source: https://github.com/akicho8/string-inflection

(use-package string-inflection
  :defer t)

;; unfill
;;
;; Functions providing the inverse of Emacs' fill-paragraph and fill-region
;;
;; Source: https://github.com/purcell/unfill

(use-package unfill
  :commands (unfill-region unfill-paragraph unfill-toggle))

;; ws-butler
;;
;; Unobtrusively remove trailing whitespace.
;;
;; Source: https://github.com/lewang/ws-butler

(use-package ws-butler
  :diminish
  :defer 2
  :config
  (add-hook 'prog-mode-hook #'ws-butler-mode))

(provide 'jag-modules-text)
;;; jag-modules-text.el ends here
