;;; jag-funcs-application.el --- Functions for application

;;; Commentary:

;;; Code:


(defun jag-create-new-eshell ()
  "Create a new eshell."
  (interactive)
  (let ((dir (if (buffer-file-name) (file-name-directory buffer-file-name))))
	(eshell  dir)))


(provide 'jag-funcs-application)
;;; jag-funcs-application.el ends here
