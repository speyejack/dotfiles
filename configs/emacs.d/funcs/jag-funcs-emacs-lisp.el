;;; jag-funcs-emacs-lisp.el --- Functions for emacs-lisp

;;; Commentary:

;;; Code:


(evil-define-operator jag-lisp-eval (beg end &optional type)
  "Evaluate the region"
  :move-point nil
  (interactive "<r>")
  (eval-region beg end))

(provide 'jag-funcs-emacs-lisp)
;;; jag-funcs-emacs-lisp.el ends here
