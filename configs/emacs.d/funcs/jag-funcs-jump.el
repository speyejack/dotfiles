;;; jag-funcs-jump.el --- Functions for jump menu

;;; Commentary:
;; from @jschaf

;;; Code:

(defun jag-avy-goto-url()
  "Use avy to goto to an URL in the buffer."
  (interactive)
  (avy-jump "https?://"))

(defun jag-avy-open-url()
  "Use avy to open an URL in the buffer."
  (interactive)
  (save-excursion
  (jag-avy-goto-url)
  (browse-url-at-point)))

(provide 'jag-funcs-jump)
;;; jag-funcs-jump.el ends here
