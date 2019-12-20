;;; jag-modules-autocomplete.el --- Autocomplete packages

;;; Commentary:
;; Packages for autocomplete in emacs

;;; Code:

;; company
;;
;; Modular text completion framework
;; ;; Source: https://github.com/company-mode/company-mode
(use-package company
  :diminish
  :defer 2
  :bind
  (:map company-mode-map
   ("M-;" . 'helm-company)
   ("M-i" . 'helm-company))
  (:map company-active-map
   ("M-;" . 'company-complete-selection)
   ("M-j" . 'company-select-next-or-abort)
   ("M-k" . 'company-select-previous-or-abort))
  (:map company-search-map
   ("M-j" . 'company-select-next-or-abort)
   ("M-k" . 'company-select-previous-or-abort)
   ("M-:" . 'company-search-abort)
   ("<escape>" . 'company-search-abort))
  :config
  (global-company-mode 1)
  (setq tab-always-indent 'complete))

;; company-quickhelp
;;
;; Popup documentation for completion candidates
;;
;; Source: https://github.com/expez/company-quickhelp

(use-package company-quickhelp
  :diminish
  :after company
  :config
  (company-quickhelp-mode 1))

;; company-statistics
;;
;; Sort candidates using completion history
;;
;; Source: https://github.com/company-mode/company-statistics

(use-package company-statistics
  :diminish
  :after company
  :config
  (company-statistics-mode 1))

;; company-ycmd
;;
;; company-mode backend for ycmd
;;
;; Source: https://github.com/abingham/emacs-ycmd

(use-package company-ycmd
  :diminish
  :after (company ycmd)
  :config
  (add-to-list 'company-backends 'company-ycmd))

;; hippie-exp
;;
;; Hippie expand tries to expand all abbreviation types
;;
;; Source: https://github.com/jschaf/dotfiles/blob/master/emacs/modules/abn-module-autocomplete.el

(use-package hippie-exp
  :defer t
  :ensure nil ; built-in package
  :init
  ;; Disables "Using try-expand-dabbrev" on completions.
  (setq hippie-expand-verbose nil)
  (setq hippie-expand-try-functions-list
		'(
		  ;; Try to expand word "dynamically", searching the current
		  ;; buffer.
		  try-expand-dabbrev
		  ;; Try to expand word "dynamically", searching all other
		  ;; buffers.
		  try-expand-dabbrev-all-buffers
		  ;; Try to expand word "dynamically", searching the kill
		  ;; ring.
		  try-expand-dabbrev-from-kill
		  ;; Try to complete text as a file name, as many characters
		  ;; as unique.
		  try-complete-file-name-partially
		  ;; Try to complete text as a file name.
		  try-complete-file-name
		  ;; Try to expand word before point according to all abbrev
		  ;; tables.
		  try-expand-all-abbrevs
		  ;; Try to complete the current line to an entire line in the
		  ;; buffer.
		  try-expand-list
		  ;; Try to complete the current line to an entire line in the
		  ;; buffer.
		  try-expand-line
		  ;; Try to complete as an Emacs Lisp symbol, as many
		  ;; characters as unique.
		  try-complete-lisp-symbol-partially
		  ;; Try to complete word as an Emacs Lisp symbol.
		  try-complete-lisp-symbol))) 

(use-package yasnippet
  :defer t
  :diminish yas-minor-mode
  :commands (yas-hippie-try-expand)
  :init
  (setq yas-verbosity 1)
  (setq yas-snippet-dirs '("~/.dotfiles/configs/emacs.d/snippets"))
  (push 'yas-hippie-try-expand hippie-expand-try-functions-list)
  ;; Disable default yas minor mode map and use hippie integration.
  (setq yas-minor-mode-map (make-sparse-keymap))
  (setq yas-wrap-around-region t)
  :config
  (unless yas-global-mode (yas-global-mode 1))
  (yas-minor-mode 1))


;; yasnippet-snippets
;;
;; A collection of snippets
;;
;; Source: https://github.com/AndreaCrotti/yasnippet-snippets

(use-package yasnippet-snippets
  :defer t
  :after yasnippet)


;; auto-yasnippet
;;
;; Quickly create disposable yasnippets
;;
;; Source: https://github.com/abo-abo/auto-yasnippet

(use-package auto-yasnippet
  :commands (aya-create aya-expand)
  :config
  (setq aya-case-fold t)
  :diminish)

(provide 'jag-modules-autocomplete)
;;; jag-modules-autocomplete.el ends here
