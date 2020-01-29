;;; jag-funcs-visual.el --- Functions for visual menu

;;; Commentary:
;; from @jschaf

;;; Code:

(defun jag-stickyfunc-mode (&optional ARG)
  "Enables stickyfunc mode and semantic."
  (interactive)
  (semantic-mode 1)
  (semantic-stickyfunc-mode
   (or ARG (or (not semantic-stickyfunc-mode) -1))))

(defun jag-whitespace-mode ()
  "Enables whitespace mode while disabling indent guide."
  (interactive)
  (call-interactively 'indent-guide-mode)
  (call-interactively 'whitespace-mode))

(provide 'jag-funcs-visual)
;;; jag-funcs-visual.el ends here
