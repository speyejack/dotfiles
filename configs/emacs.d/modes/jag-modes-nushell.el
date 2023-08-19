;;; jag-modes-nushell.el --- Config for mode nushell

;;; Commentary:

;;; Code:

(use-package jag-funcs-nushell
  :defer t
  :straight nil)

(straight-use-package
 '(nushell-mode :type git :host github :repo "azzamsa/emacs-nushell"))

(provide 'jag-modes-nushell)
;;; jag-modes-nushell.el ends here
