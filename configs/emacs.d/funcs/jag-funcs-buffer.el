;;; jag-funcs-buffer.el --- Functions for buffer menu

;;; Commentary:
;; 

;;; Code:

(defun jag-force-kill-this-buffer (&optional arg)
  "Force kill this buffer.
If the universal prefix argument is used then kill the window too."
  (interactive "P")
  (let ((kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions)))
	(kill-this-buffer)
	(if (equal '(4) arg)
		(delete-window))))

(provide 'jag-funcs-buffer)
;;; jag-funcs-buffer.el ends here
