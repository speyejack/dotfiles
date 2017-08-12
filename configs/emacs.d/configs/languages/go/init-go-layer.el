;;; Init-go-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-go-layer-requires ()
  "Load each package for directory."
  (require 'init-company-go)
  (require 'init-go-rename)
  (require 'init-flycheck-gometalinter)
  (require 'init-go-mode))

(jag--load-go-layer-requires)

(provide 'init-go-layer)
;;; init-go-layer.el ends here
