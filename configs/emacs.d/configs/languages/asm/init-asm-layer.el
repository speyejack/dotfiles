;;; Init-asm-layer.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--load-asm-layer-requires ()
  "Load each package for directory."
  (require 'init-nasm-mode)
  (require 'init-x86-lookup)
  (require 'init-asm-mode))

(jag--load-asm-layer-requires)

(provide 'init-asm-layer)
;;; init-asm-layer.el ends here
