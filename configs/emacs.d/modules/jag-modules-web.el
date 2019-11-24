;;; jag-modules-web.el ---

;;; Commentary:

;;; Code:

;; atomic-chrome
;;
;; Edit text area on Chrome with Emacs using Atomic Chrome
;;
;; Source: https://github.com/alpha22jp/atomic-chrome/tree/a505f638866f9e7b913784be0dc84f338e9ad449

(use-package atomic-chrome
  :commands 'atomic-chrome-start-server
  :diminish)

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
  :commands
  (engine/search-github
   engine/search-stack-overflow
   engine/search-wikipedia
   engine/search-duckduckgo
   engine/search-duckduckgo
   engine/search-amazon
   engine/search-youtube)

  :config
  (defengine github
	"https://github.com/search?ref=simplesearch&q=%s")

  (defengine stack-overflow
	"https://stackoverflow.com/search?q=%s")

  (defengine wikipedia
	"http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s")

  (defengine duckduckgo
	"https://duckduckgo.com/?q=%s")

  (defengine amazon
	"http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=%s")

  (defengine youtube
	"http://www.youtube.com/results?aq=f&oq=&search_query=%s")
  :diminish)

;; Howdoyou
;;
;; Easily search stack overflow into org mode
;;
;; Source: https://github.com/thanhvg/emacs-howdoyou
(use-package howdoyou
  :commands (howdoyou-query)
  :diminish)

;; Howdoi
;;
;; Easily get help on questions
;;
;; Source: https://github.com/gleitz/howdoi
(use-package howdoi
  :commands (howdoi-query
			 howdoi-query-line-at-point)
  :diminish)

;; gnus
;;
;; Reading email from emacs
;;
;; Source: https://www.emacswiki.org/emacs/GnusTutorial

(use-package gnus
  :disabled t
  :diminish)

(provide 'jag-modules-web)
;;; jag-modules-web.el ends here
