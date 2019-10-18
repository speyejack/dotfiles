;;; jag-modes-eshell.el --- Functions for eshell mode
;;; Commentary:
;; from @jschaf

;;; Code:

(setq password-cache t)
(setq password-cache-expiry 300)
;; (add-to-list 'eshell-visual-commands "nmtui")

(use-package jag-funcs-eshell
  :ensure nil
  :config
  (add-hook 'eshell-mode-hook
			(lambda ()
			  (setq pcomplete-cycle-completions nil)
			  (general-def '(insert normal) eshell-mode-map
				"RET" 'eshell-send-input
				"M-b" 'eshell-insert-buffer-name
				"M-e" 'eshell-insert-envvar
				"M-p" 'eshell-insert-process
				"M-d" 'eshell-toggle-direct-send
				"M-J" 'eshell-next-prompt
				"M-K" 'eshell-previous-prompt
				"M-g" 'helm-eshell-prompts
				"M-G" 'helm-eshell-prompts-all)
			  (general-def '(insert) eshell-mode-map
				"M-j" 'eshell-next-matching-input-from-input
				"M-k" 'eshell-previous-matching-input-from-input)
			  (general-def '(normal) eshell-mode-map
				"M-j" 'eshell-next-input
				"M-k" 'eshell-previous-input))))

;; esh-help
;;
;; Add some help functions and support for Eshell
;;
;; Source: https://github.com/tom-tan/esh-help

(use-package esh-help
  :diminish)

;; exec-path-from-shell
;;
;; Get environment variables such as $PATH from the shell
;;
;; Source: https://github.com/purcell/exec-path-from-shell

(use-package exec-path-from-shell
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
