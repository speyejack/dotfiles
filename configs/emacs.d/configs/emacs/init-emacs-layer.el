;;; Init-emacs-layer.el --- Adds several emacs visual utilities
;;; Commentary:

;;; Code:

(defun jag--load-emacs-layer-requires ()
  "Load each package for directory."
  (require 'init-diminish)
  (require 'init-powerline)
  (require 'init-solarized-theme)
  (require 'init-spaceline))

(jag--load-emacs-layer-requires)

(provide 'init-emacs-layer)
;;; init-emacs-layer.el ends here
