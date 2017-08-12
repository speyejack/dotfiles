;;; Init-javascript-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-javascript-layer-requires ()
  "Load each package for directory."
  (require 'init-js-doc)
  (require 'init-json-snatcher)
  (require 'init-json-mode)
  (require 'init-web-beautify)
  (require 'init-livid-mode)
  (require 'init-company-tern)
  (require 'init-js2-refactor)
  (require 'init-skewer-mode)
  (require 'init-tern)
  (require 'init-js2-mode)
  (require 'init-coffee-mode))

(jag--load-javascript-layer-requires)

(provide 'init-javascript-layer)
;;; init-javascript-layer.el ends here
