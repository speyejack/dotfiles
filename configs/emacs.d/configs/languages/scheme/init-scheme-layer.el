;;; Init-scheme-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-scheme-layer-requires ()
  "Load each package for directory."
  (require 'init-geiser))

(jag--load-scheme-layer-requires)

(provide 'init-scheme-layer)
;;; init-scheme-layer.el ends here
