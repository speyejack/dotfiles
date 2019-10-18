;;; jag-modes-emacs-lisp.el ---

;;; Commentary:

;;; Code:


(use-package jag-funcs-emacs-lisp
  :ensure nil)

(jag--local-leader-def
  :keymaps '(emacs-lisp-mode-map lisp-mode-map lisp-interaction-mode-map)
  "t" 'eldoc-mode
  "b" 'eval-buffer
  "f" 'eval-defun
  "e" 'eval-last-sexp
  "r" 'eval-region
  "p" 'pp-eval-last-sexp
  "m" 'pp-macroexpand-last-sexp)

;; indention
;;
;; An indention fixing tool that works well with keywords
;;
;; Source: https://emacs.stackexchange.com/questions/10230/how-to-indent-keywords-aligned

(add-hook 'emacs-lisp-mode-hook
		  (lambda () (setq-local lisp-indent-function 'Fuco1/lisp-indent-function)))
(add-hook 'org-mode-hook
		  (lambda () (setq-local lisp-indent-function 'Fuco1/lisp-indent-function)))
(add-hook 'org-src-mode-hook
		  (lambda () (setq-local lisp-indent-function 'Fuco1/lisp-indent-function)))
;; The indentation function
(defun Fuco1/lisp-indent-function (indent-point state)
  (let ((normal-indent (current-column))
		(orig-point (point)))
	(goto-char (1+ (elt state 1)))
	(parse-partial-sexp (point) calculate-lisp-indent-last-sexp 0 t)
	(cond
	 ;; car of form doesn't seem to be a symbol, or is a keyword
	 ((and (elt state 2)
		   (or (not (looking-at "\\sw\\|\\s_"))
			   (looking-at ":")))
	  (if (not (> (save-excursion (forward-line 1) (point))
				  calculate-lisp-indent-last-sexp))
		  (progn (goto-char calculate-lisp-indent-last-sexp)
				 (beginning-of-line)
				 (parse-partial-sexp (point)
									 calculate-lisp-indent-last-sexp 0 t)))
	  ;; Indent under the list or under the first sexp on the same
	  ;; line as calculate-lisp-indent-last-sexp.  Note that first
	  ;; thing on that line has to be complete sexp since we are
	  ;; inside the innermost containing sexp.
	  (backward-prefix-chars)
	  (current-column))
	 ((and (save-excursion
			 (goto-char indent-point)
			 (skip-syntax-forward " ")
			 (not (looking-at ":")))
		   (save-excursion
			 (goto-char orig-point)
			 (looking-at ":")))
	  (save-excursion
		(goto-char (+ 2 (elt state 1)))
		(current-column)))
	 (t
	  (let ((function (buffer-substring (point)
										(progn (forward-sexp 1) (point))))
			method)
		(setq method (or (function-get (intern-soft function)
									   'lisp-indent-function)
						 (get (intern-soft function) 'lisp-indent-hook)))
		(cond ((or (eq method 'defun)
				   (and (null method)
						(> (length function) 3)
						(string-match "\\`def" function)))
			   (lisp-indent-defform state indent-point))
			  ((integerp method)
			   (lisp-indent-specform method state
									 indent-point normal-indent))
			  (method
			   (funcall method indent-point state))))))))

;; auto-compile
;;
;; automatically compile Emacs Lisp libraries
;;
;; Source: https://github.com/emacscollective/auto-compile

(use-package auto-compile
  :disabled t
  :commands (auto-compile-on-save-mode auto-compile-on-load-mode)
  :diminish)

;; edebug
;;
;; Build in elisp debugger
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug.html

(use-package edebug
  :disabled t
  :commands 'edebug
  :diminish)

;; elisp-slime-nav
;;
;; Make M-. and M-, work in elisp like they do in slime
;;
;; Source: https://github.com/purcell/elisp-slime-nav

(use-package elisp-slime-nav
  :disabled t
  :commands 'elisp-slime-nav-mode
  :diminish)

;; ielm
;;
;; Elisp Interperter
;;
;; Source: https://www.emacswiki.org/emacs/InferiorEmacsLispMode

(use-package ielm
  :disabled t
  :commands 'ielm
  :diminish)

;; macrostep
;;
;; interactive macro expander
;;
;; Source: https://github.com/joddie/macrostep

(use-package macrostep
  :disabled t
  :commands 'macrostep-mode
  :diminish)

;; evil-lisp-state
;;
;; An evil state to edit Lisp code
;;
;; Source: https://github.com/syl20bnr/evil-lisp-state

(use-package evil-lisp-state
  :disabled t
  :commands 'evil-lisp-state
  :diminish
  :after evil)

(provide 'jag-modes-emacs-lisp)
;;; jag-modes-emacs-lisp.el ends here
