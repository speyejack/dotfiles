;;; jag-modules-correction.el ---

;;; Commentary:

;;; Code:

;; auto-dictionary
;;
;; automatic dictionary switcher for flyspell
;;
;; Source: https://github.com/nschum/auto-dictionary-mode

(use-package auto-dictionary
  :disabled t
  :diminish
  :after flyspell)

;; flycheck
;;
;; On-the-fly syntax checking
;;
;; Source: https://github.com/flycheck/flycheck

(use-package flycheck
  :defer 15
  :diminish
  :config
  (global-flycheck-mode 1))

;; flycheck-pos-tip
;;
;; Display Flycheck errors in GUI tooltips
;;
;; Source: https://github.com/flycheck/flycheck-pos-tip

(use-package flycheck-pos-tip
  :disabled t
  :diminish
  :after flycheck
  :config
  (flycheck-pos-tip-mode))

;; helm-flycheck
;;
;; Show flycheck errors with helm
;;
;; Source: https://github.com/yasuyk/helm-flycheck

(use-package helm-flycheck
  :general
  (jag--leader-def "c" 'helm-flycheck)
  :diminish)

;; flyspell
;;
;; Adds spell check
;;
;; Source: https://www.emacswiki.org/emacs/FlySpell

(use-package flyspell
  :diminish
  :hook ((text-mode . flyspell-mode)
         (prog-mode . flyspell-prog-mode))
  :defer 15)

;; flyspell-correct
;;
;; correcting words with flyspell via custom interface
;;
;; Source: https://github.com/d12frosted/flyspell-correct

(use-package flyspell-correct
  :general
  (jag--leader-def "C" 'flyspell-correct-next-word-generic)
  :diminish)

;; flyspell-correct-helm
;;
;; correcting words with flyspell via helm interface
;;
;; Source: https://github.com/d12frosted/flyspell-correct

(use-package flyspell-correct-helm
  :diminish
  :after flyspell-correct)

(provide 'jag-modules-correction)
;;; jag-modules-correction.el ends here
