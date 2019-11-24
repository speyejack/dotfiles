;;; jag-funcs-special.el --- Functions for special

;;; Commentary:

;;; Code:

;; https://stackoverflow.com/questions/18905382/how-to-emulate-a-specific-key-press-in-emacs-lisp
(defmacro jag--create-special (dir)
	`(defun ,(intern (format "jag--special-go-%s" dir)) ()
	   ,(format "Function to call the %s directional arrow key used for special mode." dir)
	   (interactive)
	   (let* ((key-name ,(concat "<" dir ">"))
			  (command (key-binding (kbd key-name)))
			  (last-command-event (kbd key-name))
			  (this-command command))
		 (call-interactively command))))


;; (jag--create-special "up")
;; (jag--create-special "down")
;; (jag--create-special "left")
;; (jag--create-special "right")

(defun jag--special-go-up ()
  (interactive)
  (let* ((command (key-binding (kbd "<up>")))
		 (last-command-event (kbd "<up>"))
		 (this-command command))
	(call-interactively command)))

(defun jag--special-go-down ()
  (interactive)
  (let* ((command (key-binding (kbd "<down>")))
		 (last-command-event (kbd "<down>"))
		 (this-command command))
	(call-interactively command)))

(defun jag--special-go-right ()
  (interactive)
  (let* ((command (key-binding (kbd "<right>")))
		 (last-command-event (kbd "<right>"))
		 (this-command command))
	(call-interactively command)))

(defun jag--special-go-left ()
  (interactive)
  (let* ((command (key-binding (kbd "<left>")))
		 (last-command-event (kbd "<left>"))
		 (this-command command))
	(call-interactively command)))

(provide 'jag-funcs-special)
;;; jag-funcs-special.el ends here
