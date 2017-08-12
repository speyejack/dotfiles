;;; Init-text-layer.el --- Adds several text utilities to emacs
;;; Commentary:

;;; Code:

(defun jag--load-text-layer-requires ()
  "Load each package for directory."
  (require 'init-aggressive-indent)
  (require 'init-auto-yasnippet)
  (require 'init-clean-aindent-mode)
  (require 'init-expand-region)
  (require 'init-indent-guide)
  (require 'init-lorem-ipsum)
  (require 'init-move-text)
  (require 'init-origami)
  (require 'init-semantic)
  (require 'init-srefactor)
  (require 'init-ws-butler)
  (require 'init-yasnippet))

(jag--load-text-layer-requires)

(provide 'init-text-layer)
;;; init-text-layer.el ends here
