;;; jag-packages-web.el ---

;;; Commentary:

;;; Code:

;; bbdb
;;
;; The Insidious Big Brother Database for GNU Emacs
;;
;; Source: https://www.emacswiki.org/emacs/BbdbMode

(use-package bbdb
  :disabled t
  :diminish)

;; engine-mode
;;
;; Define and query search engines from within Emacs.
;;
;; Source: https://github.com/hrs/engine-mode

(use-package engine-mode
  :disabled t
  :diminish)

;; google-this
;;
;; A set of functions and bindings to google under point.
;;
;; Source: https://github.com/Malabarba/emacs-google-this

(use-package google-this
  :general
  (jag--leader-def "L" 'google-this)
  :diminish)

;; gnus
;;
;; Reading email from emacs
;;
;; Source: https://www.emacswiki.org/emacs/GnusTutorial

(use-package gnus
  :disabled t
  :diminish)

(provide 'jag-packages-web)
;;; jag-packages-web.el ends here
