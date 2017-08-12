;; This buffer is for text that is not saved, and for Lisp evaluation.

(defun load-packages ()
  "Return a list of all packages in ELPA"
  (package-refresh-contents)
  (let ((packages '()))
	(dolist (pkg-list package-archive-contents)
	  (push (nth 0 pkg-list) packages))
	(append nil packages)))

(defun test-code ()
  "A test function to test stuff."
  (interactive)
  (let ((packages (load-packages))(found-pkgs '()) (not-found-pkgs '()))
	(goto-char 0)
	(while (re-search-forward "[a-z0-9-]+" (point-max) t)
	  (let ((pkg (intern (downcase (string-trim(match-string-no-properties 0))))))
		(if (or (member pkg packages)
				(package-installed-p pkg))
			(push pkg found-pkgs)
		  (push pkg not-found-pkgs))))
	(print not-found-pkgs)))

; blarg
