;;; jag-modes-julia.el --- Config for mode julia

;;; Commentary:

;;; Code:

(use-package jag-funcs-julia
  :ensure nil)

;; julia-mode
;;
;; A major-mode for editing Julia scripts
;;
;; Source: https://github.com/JuliaEditorSupport/julia-emacs

(use-package julia-mode
  :commands julia-mode
  :diminish
  :config
  (jag-define-leader-keys-for-major-mode
   'julia-mode

   "p" 'julia-repl
   "b" 'julia-repl-send-buffer
   "r" 'julia-repl-send-region-or-line
   "l" 'julia-repl-send-line))


;; julia-repl
;;
;; Run an inferior Julia REPL in a terminal inside Emacs
;;
;; Source: https://github.com/tpapp/julia-repl

(use-package julia-repl
  :commands (run-julia
			 julia-repl-send-buffer
			 julia-repl-send-region-or-line
			 julia-repl-send-line)
  :diminish)


(provide 'jag-modes-julia)
;;; jag-modes-julia.el ends here
