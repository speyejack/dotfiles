;;; init.el --- Package description
;;; Commentary:

;;; Code:

(package-initialize) ;; You might already have this line


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

(require 'init-company)
(require 'init-flycheck)
(require 'init-yasnippet)
(require 'init-tiny-menu)
(require 'init-helm)
(require 'init-smartparens)
(require 'init-projectile)
(require 'init-restart-emacs)
(require 'init-semantic)
(require 'init-nlinum)
(require 'init-elpy)
(require 'init-postip)
(require 'init-popwin)
(require 'init-volatile-highlights)
(require 'init-hl-todo)
(require 'init-flyspell)
(require 'init-which-key)
(require 'init-ycmd)

(require 'init-magit)
(require 'init-org)
(require 'init-evil)
(provide 'init)
;;; init.el ends here
