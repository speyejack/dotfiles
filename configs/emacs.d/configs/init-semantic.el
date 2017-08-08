;;; init-semantic.el --- Package description
;;; Commentary:

;;; Code:
(use-package semantic
  :ensure t
  :config
  (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
  (semantic-mode 1)

  (use-package stickyfunc-enhance
	:ensure t
	:config
	(require 'stickyfunc-enhance))

  (use-package srefactor
	:ensure t
	:config
	(require 'srefactor)
    (require 'srefactor-lisp)
    
    (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
    (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
    (global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
    (global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
    (global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
    (global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer)))

(provide 'init-semantic)
;;; init-semantic.el ends here
