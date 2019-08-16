;;; jag-modes-javascript.el ---

;;; Commentary:

;;; Code:

;; coffee-mode
;;
;; Major mode for CoffeeScript code
;;
;; Source: https://github.com/defunkt/coffee-mode

(use-package coffee-mode
  :disabled t
  :diminish)

;; company-tern
;;
;; Tern backend for company-mode
;;
;; Source: https://github.com/proofit404/company-tern

(use-package company-tern
  :disabled t
  :diminish)

;; js-doc
;;
;; Insert JsDoc style comment easily
;;
;; Source: https://github.com/mooz/js-doc

(use-package js-doc
  :disabled t
  :diminish)

;; js2-mode
;;
;; Improved JavaScript editing mode
;;
;; Source: https://github.com/mooz/js2-mode

(use-package js2-mode
  :disabled t
  :diminish)

;; js2-refactor
;;
;; A JavaScript refactoring library for emacs.
;;
;; Source: https://github.com/magnars/js2-refactor.el

(use-package js2-refactor
  :disabled t
  :diminish)

;; json-mode
;;
;; Major mode for editing JSON files.
;;
;; Source: https://github.com/joshwnj/json-mode

(use-package json-mode
  :disabled t
  :diminish)

;; json-snatcher
;;
;; Grabs the path to JSON values in a JSON file
;;
;; Source: https://github.com/Sterlingg/json-snatcher

(use-package json-snatcher
  :disabled t
  :diminish)

;; livid-mode
;;
;; Live browser eval of JavaScript every time a buffer changes
;;
;; Source: https://github.com/pandeiro/livid-mode

(use-package livid-mode
  :disabled t
  :diminish)

;; skewer-mode
;;
;; live browser JavaScript, CSS, and HTML interaction
;;
;; Source: https://github.com/skeeto/skewer-mode

(use-package skewer-mode
  :disabled t
  :diminish)

;; tern
;;
;; Tern-powered JavaScript integration
;;
;; Source: https://github.com/ternjs/tern

(use-package tern
  :disabled t
  :diminish)

;; web-beautify
;;
;; Format HTML, CSS and JavaScript/JSON
;;
;; Source: https://github.com/yasuyk/web-beautify

(use-package web-beautify
  :disabled t
  :diminish)

(provide 'jag-modes-javascript)
;;; jag-modes-javascript.el ends here
