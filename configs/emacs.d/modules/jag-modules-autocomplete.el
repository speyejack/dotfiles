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
  :general
  (:keymaps 'company-mode-map
   "C-'" 'helm-company
   "M-h" 'helm-company)
  (:keymaps 'company-active-map
   "M-l" 'company-complete-selection
   "C-n" 'company-select-next-or-abort
   "C-p" 'company-select-previous-or-abort
   "C-j" 'company-select-next-or-abort
   "C-k" 'company-select-previous-or-abort
   "M-j" 'company-select-next
   "M-k" 'company-select-previous)
  (:keymaps 'company-search-map
   "C-j" 'company-select-next-or-abort
   "C-k" 'company-select-previous-or-abort
   "M-j" 'company-select-next
   "M-k" 'company-select-previous
   "<escape>" 'company-search-abort)
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

(provide 'jag-modules-autocomplete)
;;; jag-modules-autocomplete.el ends here
