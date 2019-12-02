;;; jag-funcs-leader.el --- Functions for leader

;;; Commentary:

;;; Code:

(defun jag-evil-eval-whole-buffer ()
  "Run evil eval on the whole buffer."
  (interactive)
  (save-excursion
	(evil-operator-eval (point-min) (point-max))))


(provide 'jag-funcs-leader)
;;; jag-funcs-leader.el ends here
