;;; Init-configs-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-configs-layer-requires ()
  "Load each package for directory."
  (require 'init-evil-layer)
  (require 'init-helm-layer)
  (require 'init-company-layer)
  (require 'init-correction-layer)
  (require 'init-fun-layer)
  (require 'init-git-layer)
  (require 'init-languages-layer)
  (require 'init-org-layer)
  (require 'init-text-layer)
  (require 'init-utility-layer)
  (require 'init-visual-layer)
  (require 'init-emacs-layer)
  (require 'init-web-layer)
  )

(jag--load-configs-layer-requires)

(provide 'init-configs-layer)
;;; init-configs-layer.el ends here
