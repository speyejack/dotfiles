;;; jag-funcs-gud.el --- Functions for gud

;;; Commentary:

;;; Code:


(eval-after-load 'gud
  `(progn
	(gud-def jag--gud-quit-command "quit" "" "Quits gud")
	(defun jag-gud-quit ()
	  "Quit gud and close buffer and window."
	  (jag--gud-quit-command)
	  (jag-kill-this-buffer)
	  (jag-delete-window))))

(provide 'jag-funcs-gud)
;;; jag-funcs-gud.el ends here
