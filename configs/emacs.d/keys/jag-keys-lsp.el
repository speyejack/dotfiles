;;; jag-keys-lsp.el --- Config for key lsp

;;; Commentary:

;;; Code:

;; Create the lsp leader definer
(jag-create-sub-leader-map jag-leader-map "d" "lsp")

;; (eval-after-load
;; 	"lsp-mode"
;;   (setq lsp-keymap-prefix "SPC d"))

(jag-declare-leader-prefixes
 '(("d" "lsp")
   ("d d"   "debug")
   ("d w"   "workspaces")
   ("d F"   "folders")
   ("d ="   "formatting")
   ("d T"   "toggle")
   ("d g"   "goto")
   ("d h"   "help")
   ("d r"   "refactor")
   ("d u"   "ui")
   ("d a"   "code actions")
   ("d G"   "peek")))

(use-package jag-funcs-lsp
  :straight nil)


(eval-after-load
	"dap-mode"
  '(progn
	 (jag-define-keys
	  lsp-command-map
	  "dd" 'dap-debug-last
	  "dD" 'dap-debug
	  "de" 'dap-debug-edit-template
	  "dd" 'dap-debug-last
	  "dh" 'dap-hydra
	  "db" 'dap-breakpoint-toggle)))

(provide 'jag-keys-lsp)
;;; jag-keys-lsp.el ends here
