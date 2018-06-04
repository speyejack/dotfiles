;;; Init-correction-layer.el --- Adds code and spelling correction to emacs
;;; Commentary:

;;; Code:

(defun jag--load-correction-layer-requires ()
  "Load each package for directory."
  (require 'init-auto-dictionary)
  (require 'init-flycheck)
  (require 'init-helm-flycheck)
  (require 'init-flyspell))

(jag--load-correction-layer-requires)

(provide 'init-correction-layer)
;;; init-correction-layer.el ends here
