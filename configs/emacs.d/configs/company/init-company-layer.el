;;; Init-company-layer.el --- Adds Company support to emacs
;;; Commentary:

;;; Code:

(defun jag--load-company-layer-requires ()
  "Load each package for directory."
  (require 'init-company))

(jag--load-company-layer-requires)

(provide 'init-company-layer)
;;; init-company-layer.el ends here
