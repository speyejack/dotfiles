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
			  (evil-define-key '(normal operator visual) eshell-mode-map
				(kbd "gj") 'eshell-next-prompt
				(kbd "gk") 'eshell-previous-prompt
				(kbd "gh") 'eshell-bol)
			  (evil-define-key '(insert normal) eshell-mode-map
				(kbd "RET") 'eshell-send-input
				(kbd "M-b") 'eshell-insert-buffer-name
				(kbd "M-e") 'eshell-insert-envvar
				(kbd "M-p") 'eshell-insert-process
				(kbd "M-d") 'eshell-toggle-direct-send
				(kbd "M-J") 'eshell-next-prompt
				(kbd "M-K") 'eshell-previous-prompt
				(kbd "M-g") 'helm-eshell-prompts
				(kbd "M-G") 'helm-eshell-prompts-all)
			  (evil-define-key '(insert) eshell-mode-map
				(kbd "M-j") 'eshell-next-matching-input-from-input
				(kbd "M-k") 'eshell-previous-matching-input-from-input)
			  (evil-define-key '(normal) eshell-mode-map
				(kbd "M-j") 'eshell-next-input
				(kbd "M-k") 'eshell-previous-input))))

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
