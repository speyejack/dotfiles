;;; jag-packages-company.el ---

;;; Commentary:

;;; Code:

;; company
;;
;; Modular text completion framework
;;
;; Source: https://github.com/company-mode/company-mode

(use-package company
  :diminish
  :defer 15
  :general
  (:keymaps 'company-active-map
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
  (global-company-mode 1))

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
  :disabled t
  :diminish
  :after (company ycmd)
  :config
  (company-ycmd-setup))

(provide 'jag-packages-company)
;;; jag-packages-company.el ends here
