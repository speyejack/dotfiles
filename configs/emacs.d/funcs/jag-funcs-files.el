;;; jag-funcs-files.el --- Functions for files

;;; Commentary:

;;; Code:

(defun jag-config-switch-between-func-and-other ()
  "Switch between the jag-func-* and jag-module/jag-mode/jag-key of current buffer."
  (interactive)
  (if (not buffer-file-name)
      (error "Buffer has no file name"))
  (if (not (string-match-p "\\(funcs\\|modules\\|modes\\|keys\\)"
                           (file-name-nondirectory (buffer-file-name))))
      (error "File doesn't have funcs or module in name"))
  (let ((new-file (jag--bookmark-config-other-file-name (buffer-file-name))))
	(if new-file
		(find-file new-file)
	  (error "Associated file could not be found"))))

(defun jag--bookmark-config-other-file-name (current-file)
  "Get the corresponding jag-funcs or jag-module/jag-mode/jag-key name from FILE."
  (let* ((base-name (file-name-nondirectory current-file))
         (parent-dir (file-name-directory current-file))
         (grandparent-dir (file-name-directory (directory-file-name parent-dir))))
	(string-match "\\(jag-\\)\\(funcs\\|modules\\|modes\\|keys\\)\\(.*\\)" base-name)
	(let* ((current-type (match-string 2 base-name))
		   (name-prefix (match-string 1 base-name))
           (name-suffix (match-string 3 base-name))
		   (possible-types (if (string-equal current-type "funcs")
							   '("modules" "keys" "modes")
							 '("funcs")))
		   (possible-files (mapcar (lambda (type)
									 (concat grandparent-dir type "/" name-prefix type name-suffix))
								   possible-types)))
	  (seq-reduce
	   (lambda (x y) (or x y) )
	   (mapcar (lambda (file)
				 (if (file-exists-p file)
					 file
				   nil)) possible-files) nil))))

(defun jag-copy-file ()
  "Write the file under new name."
  (interactive)
  (call-interactively 'write-file))

(defun jag-delete-current-buffer-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (ido-kill-buffer)
      (when (yes-or-no-p "Are you sure you want to delete this file? ")
        (delete-file filename t)
        (kill-buffer buffer)
	(when (and (fboundp 'projectile-project-p) (projectile-project-p))
	  (call-interactively #'projectile-invalidate-cache))
        (message "File '%s' successfully removed" filename)))))

(defun jag-dos2unix ()
  "Converts the current buffer to UNIX file format."
  (interactive)
  (set-buffer-file-coding-system 'undecided-unix nil))

(defun jag-open-file-or-directory-in-external-app (arg)
  "Open current file in external application.
If the universal prefix argument is used then open the folder
containing the current file by the default explorer."
  (interactive "P")
  (if arg
      (jag--open-in-external-app (expand-file-name default-directory))
    (let ((file-path (if (derived-mode-p 'dired-mode)
                         (dired-get-file-for-visit)
                       buffer-file-name)))
      (if file-path
          (jag--open-in-external-app file-path)
        (message "No file associated to this buffer.")))))

(defun jag--open-in-external-app (file-path)
  "Open `file-path' in external application."
  (cond
   (IS-LINUX (let ((process-connection-type nil))
               (start-process "" nil "xdg-open" file-path)))
   (IS-MAC (shell-command (format "open \"%s\"" file-path)))
   (IS-WINDOWS
    (and (fboundp 'w32-shell-execute)
         (w32-shell-execute
          "open"
          (replace-regexp-in-string "/" "\\\\" file-path))))))
(defun jag-rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let* ((name (buffer-name))
         (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let* ((dir (file-name-directory filename))
             (new-name (read-file-name "New name: " dir)))
        (cond ((get-buffer new-name)
               (error "A buffer named '%s' already exists!" new-name))
              (t
               (let ((dir (file-name-directory new-name)))
                 (when (and (not (file-exists-p dir)) (yes-or-no-p (format "Create directory '%s'?" dir)))
                   (make-directory dir t)))
               (rename-file filename new-name 1)
               (rename-buffer new-name)
               (set-visited-file-name new-name)
               (set-buffer-modified-p nil)
               (when (fboundp 'recentf-add-file)
                 (recentf-add-file new-name)
                 (recentf-remove-if-non-kept filename))
               (when (and (fboundp 'projectile-project-p)
                          (projectile-project-p))
                 (call-interactively #'projectile-invalidate-cache))
               (message "File '%s' successfully renamed to '%s'" name (file-name-nondirectory new-name))))))))

(defun jag-show-and-copy-buffer-filename ()
  "Show and copy the full path to the current file in the minibuffer."
  (interactive)
  ;; list-buffers-directory is the variable set in dired buffers
  (let ((file-name (or (buffer-file-name) list-buffers-directory)))
    (if file-name
        (message (kill-new file-name))
      (error "Buffer not visiting a file"))))

(defun jag-sudo-edit (&optional arg)
  (interactive "P")
  (let ((fname (if (or arg (not buffer-file-name))
                   (read-file-name "File: ")
                 buffer-file-name)))
    (find-file
     (cond ((string-match-p "^/ssh:" fname)
            (with-temp-buffer
              (insert fname)
              (search-backward ":")
              (let ((last-match-end nil)
                    (last-ssh-hostname nil))
                (while (string-match "\\\(?:[a-zA-Z]*@\\\)?\\\([^:|]+\\\)[:|]" fname last-match-end)
                  (setq last-ssh-hostname (or (match-string 1 fname)
                                              last-ssh-hostname))
                  (setq last-match-end (match-end 0)))
                (insert (format "|sudo:%s" (or last-ssh-hostname "localhost"))))
              (buffer-string)))
           (t (concat "/sudo:root@localhost:" fname))))))

(defun jag-unix2dos ()
  "Converts the current buffer to DOS file format."
  (interactive)
  (set-buffer-file-coding-system 'undecided-dos nil))

(defun jag-open-dotfiles ()
  "Opens dotfiles start file."
  (interactive)
  (find-file (expand-file-name "start.el" jag-dir)))

(defun jag-open-inbox ()
  "Opens inbox files."
  (interactive)
  (find-file (expand-file-name "inbox.org" jag-gtd-dir)))

(provide 'jag-funcs-files)
;;; jag-funcs-files.el ends here
