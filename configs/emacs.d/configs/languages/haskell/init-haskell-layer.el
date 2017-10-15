;;; Init-haskell-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-haskell-layer-requires ()
  "Load each package for directory."
  (add-hook 'haskell-mode-hook
			(lambda ()
			  (progn
				(require 'init-hindent)
				(require 'init-company-ghci)
				(require 'init-intero)
				(require 'init-ghc)
				(require 'init-cmm-mode)
				(require 'init-haskell-mode)
				(require 'init-hlint-refactor)
				(require 'init-helm-hoogle)
				(require 'init-flycheck-haskell)
				(require 'init-company-ghc)
				(require 'init-company-cabal)))))

(jag--load-haskell-layer-requires)

(provide 'init-haskell-layer)
;;; init-haskell-layer.el ends here
