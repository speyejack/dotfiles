;;; jag-keys-lsp.el --- Config for key lsp

;;; Commentary:

;;; Code:

;; Create the lsp leader definer
(jag-create-sub-leader-map jag-leader-map "d" "lsp")

;; (eval-after-load
;; 	"lsp-mode"
;;   (setq lsp-keymap-prefix "SPC d"))

(jag-declare-prefixes
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

;; (jag-define-keys
;;  jag-lsp-map

;;  "ss" 'lsp
;;  )

;; (eval-after-load
;; 	"lsp-mode"
;;   '(progn
;; 	 (lsp-define-conditional-key
;; 	   jag-lsp-map
;; 	   ;; sessions
;; 	   "sr" lsp-workspace-restart (lsp-workspaces)
;; 	   ;; "sq" lsp-workspace-shutdown (lsp-workspaces)
;; 	   "sd" lsp-describe-session t
;; 	   "sD" lsp-disconnect (lsp-workspaces)

;; 	   ;; formatting
;; 	   "==" lsp-format-buffer (or (lsp-feature? "textDocument/rangeFormatting")
;; 								  (lsp-feature? "textDocument/formatting"))
;; 	   "=r" lsp-format-region (lsp-feature? "textDocument/rangeFormatting")

;; 	   ;; debugger
;; 	   "dd" dap-debug-last t
;; 	   "dD" dap-debug t
;; 	   "de" dap-debug-edit-template t

;; 	   ;; folders
;; 	   "fa" lsp-workspace-folders-add t
;; 	   "fr" lsp-workspace-folders-remove t
;; 	   "fb" lsp-workspace-blacklist-remove t

;; 	   ;; toggles
;; 	   "tl" lsp-lens-mode (lsp-feature? "textDocument/codeLens")
;; 	   "tL" lsp-toggle-trace-io t
;; 	   "th" lsp-toggle-symbol-highlight (lsp-feature? "textDocument/documentHighlight")
;; 	   "tS" lsp-ui-sideline-mode (featurep 'lsp-ui-sideline)
;; 	   "td" lsp-ui-doc-mode (featurep 'lsp-ui-doc)
;; 	   "ts" lsp-toggle-signature-auto-activate (lsp-feature? "textDocument/signatureHelp")
;; 	   "tf" lsp-toggle-on-type-formatting (lsp-feature? "textDocument/onTypeFormatting")
;; 	   "tT" lsp-treemacs-sync-mode (featurep 'lsp-treemacs)

;; 	   ;; goto
;; 	   "gg" lsp-find-definition (lsp-feature? "textDocument/definition")
;; 	   "gr" lsp-find-references (lsp-feature? "textDocument/references")
;; 	   "gi" lsp-find-implementation (lsp-feature? "textDocument/implementation")
;; 	   "gt" lsp-find-type-definition (lsp-feature? "textDocument/typeDefinition")
;; 	   "gd" lsp-find-declaration (lsp-feature? "textDocument/declaration")
;; 	   "gh" lsp-treemacs-call-hierarchy (and (lsp-feature? "callHierarchy/incomingCalls")
;; 											 (fboundp 'lsp-treemacs-call-hierarchy))
;; 	   "ga" xref-find-apropos (lsp-feature? "workspace/symbol")
;; 	   "ge" lsp-treemacs-errors-list (fboundp 'lsp-treemacs-errors-list)

;; 	   ;; help
;; 	   "hh" lsp-describe-thing-at-point (lsp-feature? "textDocument/hover")
;; 	   "hs" lsp-signature-activate (lsp-feature? "textDocument/signatureHelp")
;; 	   "hg" lsp-ui-doc-glance (and (featurep 'lsp-ui-doc)
;; 								   (lsp-feature? "textDocument/hover"))

;; 	   ;; refactoring
;; 	   "rr" lsp-rename (lsp-feature? "textDocument/rename")
;; 	   "ro" lsp-organize-imports (lsp-feature? "textDocument/rename")


;; 	   ;; actions
;; 	   "aa" lsp-execute-code-action (lsp-feature? "textDocument/codeAction")
;; 	   "al" lsp-avy-lens t
;; 	   "ah" lsp-document-highlight (lsp-feature? "textDocument/documentHighlight")

;; 	   ;; ui
;; 	   "ui" lsp-ui-imenu t

;; 	   ;; peeks
;; 	   "gg" lsp-ui-peek-find-definitions (and (lsp-feature? "textDocument/definition")
;; 											  (fboundp 'lsp-ui-peek-find-definitions))
;; 	   "gr" lsp-ui-peek-find-references (and (fboundp 'lsp-ui-peek-find-references)
;; 											 (lsp-feature? "textDocument/references"))
;; 	   "gi" lsp-ui-peek-find-implementation (and (fboundp 'lsp-ui-peek-find-implementation)
;; 												 (lsp-feature? "textDocument/implementation"))
;; 	   "gs" lsp-ui-peek-find-workspace-symbol (and (fboundp 'lsp-ui-peek-find-workspace-symbol)
;; 												   (lsp-feature? "workspace/symbol")))))

(eval-after-load
	"dap-mode"
  '(progn
	 (jag-define-keys
	  jag-lsp-map
	  "dd" 'dap-debug-last
	  "dh" 'dap-hydra
	  "db" 'dap-breakpoint-toggle)))

(provide 'jag-keys-lsp)
;;; jag-keys-lsp.el ends here
