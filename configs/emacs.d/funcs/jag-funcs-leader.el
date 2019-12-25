;;; jag-funcs-leader.el --- Functions for leader

;;; Commentary:

;;; Code:

(evil-define-operator jag-evil-eval (beg end)
  "Run evil eval on region unless not defined, otherwise run quickrun."
  :move-point nil
  (interactive "<r>")
  (if (assoc major-mode evil-extra-operator-eval-modes-alist)
	  (evil-operator-eval beg end)
	(quickrun-region beg end)))

(defun jag-evil-eval-whole-buffer ()
  "Run evil eval on the whole buffer."
  (interactive)
  (if (assoc major-mode evil-extra-operator-eval-modes-alist)
	  (evil-operator-eval (point-min) (point-max))
	(quickrun)))


(provide 'jag-funcs-leader)
;;; jag-funcs-leader.el ends here
