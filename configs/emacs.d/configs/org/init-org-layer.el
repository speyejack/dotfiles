;;; Init-org-layer.el --- Adds better org support to emacs
;;; Commentary:

;;; Code:

(defun jag--load-org-layer-requires ()
  "Load each package for directory."
  (require 'init-org))

(jag--load-org-layer-requires)

(provide 'init-org-layer)
;;; init-org-layer.el ends here
