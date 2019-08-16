;;; jag-modes-haskell.el ---

;;; Commentary:

;;; Code:

;; cmm-mode
;;
;; Major mode for C-- source code
;;
;; Source: https://github.com/bgamari/cmm-mode

(use-package cmm-mode
  :disabled t
  :commands 'cmm-mode
  :diminish)

;; company-cabal
;;
;; company-mode cabal backend
;;
;; Source: https://github.com/iquiw/company-cabal

(use-package company-cabal
  :disabled t
  :diminish
  :after company)

;; company-ghc
;;
;; company-mode ghc-mod backend
;;
;; Source: https://github.com/iquiw/company-ghc

(use-package company-ghc
  :disabled t
  :diminish
  :after company)

;; company-ghci
;;
;; company backend which uses the current ghci process.
;;
;; Source: https://github.com/juiko/company-ghci

(use-package company-ghci
  :disabled t
  :diminish
  :after company)

;; flycheck-haskell
;;
;; Flycheck: Automatic Haskell configuration
;;
;; Source: https://github.com/flycheck/flycheck-haskell

(use-package flycheck-haskell
  :disabled t
  :diminish
  :after flycheck)

;; ghc
;;
;; Sub mode for Haskell mode
;;
;; Source: https://github.com/DanielG/ghc-mod

(use-package ghc
  :disabled t
  :diminish)

;; haskell-mode
;;
;; A Haskell editing mode
;;
;; Source: https://github.com/haskell/haskell-mode

(use-package haskell-mode
  :disabled t
  :diminish)

;; helm-hoogle
;;
;; Use helm to navigate query results from Hoogle
;;
;; Source: https://github.com/jwiegley/helm-hoogle

(use-package helm-hoogle
  :disabled t
  :diminish)

;; hindent
;;
;; Indent haskell code using the "hindent" program
;;
;; Source: https://github.com/chrisdone/hindent

(use-package hindent
  :disabled t
  :diminish)

;; hlint-refactor
;;
;; Apply HLint suggestions
;;
;; Source: https://github.com/mpickering/hlint-refactor-mode

(use-package hlint-refactor
  :disabled t
  :diminish)

;; intero
;;
;; Complete development mode for Haskell
;;
;; Source: https://github.com/commercialhaskell/intero

(use-package intero
  :disabled t
  :diminish)

(provide 'jag-modes-haskell)
;;; jag-modes-haskell.el ends here
