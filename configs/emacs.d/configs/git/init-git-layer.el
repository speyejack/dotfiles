;;; Init-git-layer.el --- Git integration with emacs
;;; Commentary:

;;; Code:

(defun jag--load-git-layer-requires ()
  "Load each package for directory."
  (require 'init-magit)
  (require 'init-git-timemachine))

(jag--load-git-layer-requires)

(provide 'init-git-layer)
;;; init-git-layer.el ends here
