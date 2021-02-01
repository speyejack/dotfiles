;;; jag-funcs-ess.el --- Functions for ess

;;; Commentary:

;;; Code:


(defun jag-ess-eval-region (start end)
  "Eval the region from START to END in `ess-mode'."
  (ess-eval-region start end nil))

(defun jag-polymode-eval-chunk-and-step ()
  (interactive)
  (call-interactively 'polymode-eval-region-or-chunk ())
  (call-interactively 'polymode-next-chunk-same-type ()))

(provide 'jag-funcs-ess)
;;; jag-funcs-ess.el ends here
