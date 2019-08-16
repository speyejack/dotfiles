;;; jag-modes-go.el ---

;;; Commentary:

;;; Code:

;; company-go
;;
;; company-mode backend for Go (using gocode)
;;
;; Source: https://github.com/nsf/gocode

(use-package company-go
  :disabled t
  :commands 'go-mode
  :diminish
  :after company)

;; flycheck-gometalinter
;;
;; flycheck checker for gometalinter
;;
;; Source: https://github.com/favadi/flycheck-gometalinter

(use-package flycheck-gometalinter
  :disabled t
  :commands 'go-mode
  :diminish
  :after flycheck)

;; go-mode
;;
;; Major mode for the Go programming language
;;
;; Source: https://github.com/dominikh/go-mode.el

(use-package go-mode
  :disabled t
  :commands 'go-mode
  :diminish)

;; go-rename
;;
;; Integration of the 'gorename' tool into Emacs.
;;
;; Source: https://github.com/dominikh/go-mode.el

(use-package go-rename
  :disabled t
  :commands 'go-mode
  :diminish)

(provide 'jag-modes-go)
;;; jag-modes-go.el ends here
