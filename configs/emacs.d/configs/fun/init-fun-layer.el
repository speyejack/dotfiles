;;; Init-fun-layer.el --- Some fun utilities
;;; Commentary:

;;; Code:

(defun jag--load-fun-layer-requires ()
  "Load each package for directory."
  (require 'init-xkcd))

(jag--load-fun-layer-requires)

(provide 'init-fun-layer)
;;; init-fun-layer.el ends here
