;;; Init-visual-layer.el --- Adds several visual packages to emacs
;;; Commentary:

;;; Code:

(defun jag--load-visual-layer-requires ()
  "Load each package for directory."
  (require 'init-adaptive-wrap)
  (require 'init-all-the-icons)
  (require 'init-auto-highlight-symbol)
  (require 'init-centered-cursor-mode)
  (require 'init-column-enforce-mode)
  (require 'init-diff-hl)
  (require 'init-golden-ratio)
  (require 'init-highlight-numbers)
  (require 'init-highlight-parentheses)
  (require 'init-highlight-symbol)
  (require 'init-hl-todo)
  (require 'init-imenu-list)
  (require 'init-nlinum-relative)
  (require 'init-rainbow-delimiters)
  (require 'init-rainbow-mode)
  (require 'init-volatile-highlights))

(jag--load-visual-layer-requires)

(provide 'init-visual-layer)
;;; init-visual-layer.el ends here
