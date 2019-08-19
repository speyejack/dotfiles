;;; jag-funcs-narrow.el --- Functions for narrow menu

;;; Commentary:

;;; Code:

(defun jag-enable-origami-mode ()
  "Enables origami if not enabled."
  (if (not (bound-and-true-p origami-mode))
	  (origami-mode 1)))

(defun jag-open-fold()
	"Enabled origami and opens fold."
	(interactive)
	(jag-enable-origami-mode)
	(evil-open-fold))

(defun jag-close-fold()
	"Enabled origami and closes fold."
	(interactive)
	(jag-enable-origami-mode)
	(evil-close-fold))

(defun jag-toggle-fold()
	"Enabled origami and toggle fold."
	(interactive)
	(jag-enable-origami-mode)
	(evil-toggle-fold))

(defun jag-open-folds()
	"Enabled origami and opens folds."
	(interactive)
	(jag-enable-origami-mode)
	(evil-open-folds))

(defun jag-close-folds()
	"Enabled origami and closes folds."
	(interactive)
	(jag-enable-origami-mode)
	(evil-close-folds))

(defun jag-open-fold-recursively()
	"Enabled origami and open folds recursively."
	(interactive)
	(jag-enable-origami-mode)
	(evil-close-folds))

(provide 'jag-funcs-narrow)
;;; jag-funcs-narrow.el ends here
