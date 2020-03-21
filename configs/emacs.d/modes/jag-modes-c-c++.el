;;; jag-modes-c-c++.el --- Config for mode c-c++

;;; Commentary:

;;; Code:

(use-package jag-funcs-c-c++
  :defer t
  :ensure nil)

(dolist (mode '(c-mode c++-mode))
  (jag-define-leader-keys-for-major-mode
   mode
   "d" 'jag-start-realgud-gdb
   "D" 'realgud:gdb
   "m" 'projectile-find-other-file
   "M" 'projectile-find-other-file-other-frame
   "a" 'disaster))

(use-package disaster
  :commands 'disaster
  :diminish)

(provide 'jag-modes-c-c++)
;;; jag-modes-c-c++.el ends here
