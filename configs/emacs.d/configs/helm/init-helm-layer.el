;;; Init-helm-layer.el --- Adds helm support to emacs
;;; Commentary:

;;; Code:

(defun jag--load-helm-layer-requires ()
  "Load each package for directory."
  (require 'init-helm))

(jag--load-helm-layer-requires)

(provide 'init-helm-layer)
;;; init-helm-layer.el ends here
