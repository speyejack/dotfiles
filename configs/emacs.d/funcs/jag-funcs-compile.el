;;; jag-funcs-compile.el --- Functions for compile

;;; Commentary:

;;; Code:

(defun jag-close-compilation-window ()
  "Close the window containing the '*compilation*' buffer."
  (interactive)
  (when compilation-last-buffer
	(delete-windows-on compilation-last-buffer)))

(provide 'jag-funcs-compile)
;;; jag-funcs-compile.el ends here
