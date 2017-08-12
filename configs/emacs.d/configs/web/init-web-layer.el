;;; Init-web-layer.el --- Adds a few web packages to emacs
;;; Commentary:

;;; Code:

(defun jag--load-web-layer-requires ()
  "Load each package for directory."
  (require 'init-bbdb)
  (require 'init-engine-mode)
  (require 'init-gnus))

(jag--load-web-layer-requires)

(provide 'init-web-layer)
;;; init-web-layer.el ends here
