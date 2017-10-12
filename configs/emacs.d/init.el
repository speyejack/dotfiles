;;; init.el --- Package description
;;; Commentary:

;;; Code:

(package-initialize) ;; You might already have this line

;; Some startup colors so im not blinded by defaults
(set-background-color "#002B36")
(set-foreground-color "#2AA198")
(set-face-background 'mode-line "#073642")

(defun get-directories (dir)
  "Return a list of all directories in a the given directory(DIR)."
  (let ((dirs '()))
	(let ((files (directory-files-and-attributes dir t)))
	  (dolist (file files)
		(let ((filename (car file)) (isdir (nth 1 file)))
		  (when (and isdir (not (string-suffix-p "." filename)))
			(push filename dirs))))
	  (append dirs 'nil))))

(defun recursively-load-directory (root)
  "Recursively load every directory under root directory(ROOT)."
  (let ((dirs (list root)))
	(while dirs
	  (let ((dir (pop dirs)))
		(add-to-list 'load-path dir)
		(setq dirs
			  (append dirs (get-directories dir)))))))

(recursively-load-directory (expand-file-name "configs" user-emacs-directory))
(require 'init-elpa)
(require 'user-config)
(require 'init-use-package)

(require 'init-configs-layer)
(provide 'init)
;;; init.el ends here
