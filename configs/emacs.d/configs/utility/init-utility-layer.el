;;; Init-utility-layer.el --- Adds several general utilities to emacs
;;; Commentary:

;;; Code:

(defun jag--load-utility-layer-requires ()
  "Load each package for directory."
  (require 'init-ag)
  (require 'init-anzu)
  (require 'init-avy)
  (require 'init-desktop)
  (require 'init-ediff)
  (require 'init-eshell)
  (require 'init-exec-path-from-shell)
  (require 'init-eyebrowse)
  (require 'init-fancy-battery)
  (require 'init-fasd)
  (require 'init-floobits)
  (require 'init-fuzzy)
  (require 'init-hide-comnt)
  (require 'init-link-hint)
  (require 'init-mmm-mode)
  (require 'init-multi-term)
  (require 'init-open-junk-file)
  (require 'init-pdf-tools)
  (require 'init-persp-mode)
  (require 'init-popwin)
  (require 'init-pos-tip)
  (require 'init-projectile)
  (require 'init-restart-emacs)
  (require 'init-s)
  (require 'init-spray)
  (require 'init-tiny-menu)
  (require 'init-virtualenvwrapper)
  (require 'init-wgrep-ag)
  (require 'init-which-key)
  (require 'init-winum)
  (require 'init-ycmd)
  (require 'init-zeal-at-point)
  (require 'init-zoom-frm))

(jag--load-utility-layer-requires)

(provide 'init-utility-layer)
;;; init-utility-layer.el ends here
