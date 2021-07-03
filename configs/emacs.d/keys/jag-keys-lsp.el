;;; jag-keys-lsp.el --- Config for key lsp

;;; Commentary:

;;; Code:

;; Create the lsp leader definer
(jag-create-sub-leader-map jag-leader-map "d" "lsp")

;; (eval-after-load
;; 	"lsp-mode"
;;   (setq lsp-keymap-prefix "SPC d"))


(use-package jag-funcs-lsp
  :straight nil)


(eval-after-load
	"dap-mode"
  '(progn
	 (jag-define-keys
	  lsp-command-map
	  "dd" 'dap-debug-last
	  "dh" 'dap-hydra
	  "db" 'dap-breakpoint-toggle)))

(provide 'jag-keys-lsp)
;;; jag-keys-lsp.el ends here
