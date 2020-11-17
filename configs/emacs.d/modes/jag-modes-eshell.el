;;; jag-modes-eshell.el --- Functions for eshell mode
;;; Commentary:
;; from @jschaf

;;; Code:

(setq password-cache t)
(setq password-cache-expiry 300)
;; (add-to-list 'eshell-visual-commands "nmtui")

(use-package jag-funcs-eshell
  :straight nil
  :commands 'jag--jump-eshell-prompt
  :init
  (evil-set-initial-state 'eshell-mode 'insert)
  (setq pcomplete-cycle-completions nil)
  (add-hook 'eshell-mode-hook
			(lambda ()
			  (unless (file-exists-p eshell-aliases-file)
				(eshell/alias 'll "ls -l $*")
				(eshell/alias 'ff "find-file $1")
				(eshell/alias 'python "python3 $1")
				(eshell/alias 'dcrun "docker-compose -f ./docker-compose.yml $*")
				(eshell/alias 'dclogs "docker-compose -f ./docker-compose.yml logs -tf --tail=\"50\" $*"))
			  (setq eshell-hist-ignoredups t)
			  (setq pcomplete-cycle-completions nil)
			  (add-hook 'evil-insert-state-entry-hook 'jag--jump-eshell-prompt nil t)

			  (evil-define-key '(normal operator visual) eshell-mode-map
				(kbd "gj") 'eshell-next-prompt
				(kbd "gk") 'eshell-previous-prompt
				(kbd "gh") 'eshell-bol)
			  (evil-define-key '(insert normal) eshell-mode-map
				(kbd "RET") 'eshell-send-input
				(kbd "M-b") 'eshell-insert-buffer-name
				(kbd "M-v") 'eshell-insert-envvar
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
  :after eshell
  :diminish)

;; exec-path-from-shell
;;
;; Get environment variables such as $PATH from the shell
;;
;; Source: https://github.com/purcell/exec-path-from-shell

(use-package exec-path-from-shell
  :after eshell
  :diminish)

;; fasd
;;
;; Emacs integration for the command-line productivity booster `fasd'
;;
;; Source: https://github.com/steckerhalter/emacs-fasd

(use-package fasd
  :disabled t
  :diminish)


;; bash-completion
;;
;; Add programmable bash completion to Emacs shell-mode
;;
;; Source: https://github.com/szermatt/emacs-bash-completion
(use-package bash-completion
  :after eshell
  :if (executable-find "bash")
  :config
  (bash-completion-setup))

;; fish-completion
;;
;; Fish completion for Emacs and Eshell
;;
;; Source: https://gitlab.com/ambrevar/emacs-fish-completion
(use-package fish-completion
  :after eshell
  :if (executable-find "fish")
  :config
  (global-fish-completion-mode)
  (setq fish-completion-fallback-on-bash-p (executable-find "bash")))

(provide 'jag-modes-eshell)
;;; jag-modes-eshell.el ends here
