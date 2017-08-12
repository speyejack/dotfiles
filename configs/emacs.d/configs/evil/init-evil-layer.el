;;; Init-evil-layer.el --- Adds evil support to emacs
;;; Commentary:

;;; Code:

(defun jag--load-evil-layer-requires ()
  "Load each package for directory."
  (require 'init-evil))

(jag--load-evil-layer-requires)

(provide 'init-evil-layer)
;;; init-evil-layer.el ends here
