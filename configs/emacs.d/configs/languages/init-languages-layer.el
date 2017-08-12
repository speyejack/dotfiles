;;; Init-languages-layer.el --- Adds several languages specific packages to emacs
;;; Commentary:

;;; Code:

(defun jag--load-languages-layer-requires ()
  "Load each package for directory."
  (require 'init-asm-layer)
  (require 'init-emacs-lisp-layer)
  (require 'init-haskell-layer)
  (require 'init-go-layer)
  (require 'init-java-layer)
  (require 'init-javascript-layer)
  (require 'init-lua-layer)
  (require 'init-python-layer)
  (require 'init-scheme-layer))

(jag--load-languages-layer-requires)

(provide 'init-languages-layer)
;;; init-languages-layer.el ends here
