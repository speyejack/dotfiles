;;; jag-modules-lsp.el --- Config for general module lsp

;;; Commentary:

;;; Code:

(use-package jag-funcs-lsp
  :defer t
  :straight nil)

;; lsp-mode
;;
;; Emacs client/library for the Language Server Protocol
;;
;; Source: https://github.com/emacs-lsp/lsp-mode
(use-package lsp-mode
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (define-key jag-leader-map "d" lsp-command-map)
  (setq read-process-output-max (* 1024 1024)))

;; treemacs
;;
;; a tree layout file explorer for Emacs
;;
;; Source: https://github.com/Alexander-Miller/treemacs
(use-package treemacs
  :diminish
  :after lsp-mode
  :commands treemacs)

;; lsp-ui
;;
;; UI integrations for lsp-mode
;;
;; Source: https://github.com/emacs-lsp/lsp-ui
(use-package lsp-ui
  :after lsp-mode
  :diminish
  :config
  (setq lsp-ui-doc-show-with-cursor nil)
  (setq lsp-ui-sideline-show-code-actions nil)
  (jag-define-keys lsp-ui-peek-mode-map
	"j" 'lsp-ui-peek--select-next
	"k" 'lsp-ui-peek--select-prev
	"M-j" 'lsp-ui-peek--select-next-file
	"M-k" 'lsp-ui-peek--select-prev-file
  ))

;; company-lsp
;;
;; Company completion backend for lsp-mode
;;
;; Source: https://github.com/tigersoldier/company-lsp
(use-package company-lsp
  :diminish
  :after lsp-mode
  :commands company-lsp)

;; helm-lsp
;;
;; lsp-mode heart helm
;;
;; Source: https://github.com/emacs-lsp/helm-lsp
(use-package helm-lsp
  :diminish
  :after lsp-mode
  :commands helm-lsp-workspace-symbol)

;; lsp-treemacs
;;
;; lsp-mode heart treemacs
;;
;; Source: https://github.com/emacs-lsp/lsp-treemacs
(use-package lsp-treemacs
  :diminish
  :after lsp-mode
  :commands lsp-treemacs-errors-list)

;; dap-mode
;;
;;  Emacs heart Debug Adapter Protocol
;;
;; Source: https://github.com/emacs-lsp/dap-mode
(use-package dap-mode
  :after lsp-mode
  :diminish
  :commands (dap-debug dap-debug-edit-template dap-debug-last dap-register-debug-template dap-debug-last)
  :config
  (add-hook 'dap-stopped-hook
          (lambda (arg) (call-interactively #'dap-hydra))))

;; dap-ui
;;
;; UI integation for dap-mode
;;
;; Source: https://github.com/emacs-lsp/dap-mode
(use-package dap-ui
  :after dap-mode
  :straight nil
  :config
  (dap-ui-mode))

(use-package dap-hydra
  :after dap-mode
  :commands 'dap-hydra
  :straight nil
  :bind
  (:map dap-hydra/keymap
   ("M-j" . dap-hydra/dap-next)
   ("M-h" . dap-hydra/dap-step-out)
   ("M-l" . dap-hydra/dap-step-in)
   ("M-b" . dap-hydra/dap-breakpoint-toggle)
   ("M-c" . dap-hydra/dap-continue)
   ("M-r" . dap-hydra/dap-restart-frame)
   ("M-q" . dap-hydra/dap-disconnect)))

(use-package posframe
  :after lsp-mode)

(provide 'jag-modules-lsp)
;;; jag-modules-lsp.el ends here
