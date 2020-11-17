;;; jag-modes-cmake.el --- Config for mode cmake

;;; Commentary:

;;; Code:

(use-package jag-funcs-cmake
  :defer t
  :straight nil)

(use-package cmake-mode
  :commands cmake-mode
  :config
  (jag-define-leader-keys-for-major-mode
   'cmake-mode
   "h" 'cmake-help
   "s" 'cmake-unscreamify-buffer
   "k" 'cmake-command-run
   "c" 'cmake-command-run))

(provide 'jag-modes-cmake)
;;; jag-modes-cmake.el ends here
