;;; Init-java-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-java-layer-requires ()
  "Load each package for directory."
  (require 'init-company-emacs-eclim)
  (require 'init-eclim)
  (require 'init-company))

(jag--load-java-layer-requires)

(provide 'init-java-layer)
;;; init-java-layer.el ends here
