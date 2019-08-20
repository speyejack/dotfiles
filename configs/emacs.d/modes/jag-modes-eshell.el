;;; jag-modes-eshell.el --- Functions for eshell mode
;;; Commentary:
;; from @jschaf

;;; Code:

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

;; fasd
;;
;; Emacs integration for the command-line productivity booster `fasd'
;;
;; Source: https://github.com/steckerhalter/emacs-fasd

(use-package fasd
  :disabled t
  :diminish)


(provide 'jag-modes-eshell)
;;; jag-modes-eshell.el ends here
