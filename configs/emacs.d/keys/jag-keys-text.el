;;; jag-keys-text.el --- Text key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The text key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "t" "text")

(use-package jag-funcs-text
  :ensure nil
  :bind
  (:map jag-text-map
	("TAB" . 'indent-rigidly)
	("U" . 'upcase-region)
	;; "a" '(:wk "align")
	("a&" . 'jag-align-repeat-ampersand)
	("a(" . 'jag-align-repeat-left-paren)
	("a)" . 'jag-align-repeat-right-paren)
	("a," . 'jag-align-repeat-comma)
	("a." . 'jag-align-repeat-decimal)
	("a:" . 'jag-align-repeat-colon)
	("a;" . 'jag-align-repeat-semicolon)
	("a=" . 'jag-align-repeat-equal)
	("a\\" . 'jag-align-repeat-backslash)
	("aa" . 'align)
	("ac" . 'align-current)
	("am" . 'jag-align-repeat-math-oper)
	("ar" . 'jag-align-repeat)
	("a|" . 'jag-align-repeat-bar)
	("c" . 'count-words-region)
	;; "d" '(:wk "delete")
	("dw" . 'delete-trailing-whitespace)
	("e" . 'er/expand-region)
	;; "i" '(:wk "string-inflection")
	("iC" . 'string-inflection-camelcase)
	("iU" . 'string-inflection-upcase)
	("ic" . 'string-inflection-lower-camelcase)
	("ii" . 'string-inflection-all-cycle)
	("ik" . 'string-inflection-kebab-case)
	("it" . 'string-inflection-toggle)
	("iu" . 'string-inflection-underscore)
	("j" . 'move-text-down)
	;; "J" '(:wk "justify")
	("Jc" . 'set-justification-center)
	("Jf" . 'set-justification-full)
	("Jl" . 'set-justification-left)
	("Jn" . 'set-justification-none)
	("Jr" . 'set-justification-right)
	("k" . 'move-text-up)
	;; "l" '(:wk "lines")
	("lC" . 'jag-sort-lines-by-column-reverse)
	("lS" . 'jag-sort-lines-reverse)
	("lT" . 'untabify)
	("lc" . 'jag-sort-lines-by-column)
	("ld" . 'jag-duplicate-line-or-region)
	("ls" . 'jag-sort-lines)
	("lt" . 'tabify)
	("lu" . 'jag-uniquify-lines)
	("r" . 'helm-regexp)
	;; "t" '(:wk "transpose")
	("tc" . 'transpose-chars)
	("tl" . 'transpose-lines)
	("tl" . 'transpose-regions)
	("tw" . 'transpose-words)
	("u" . 'downcase-region)
	("w" . 'jag-count-words-analysis)))

(provide 'jag-keys-text)

;;; jag-keys-text.el ends here
