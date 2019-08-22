;;; jag-funcs-yank.el --- Functions for yank

;;; Commentary:

;;; Code:

(defun jag-yank-file-path (&optional use-full-expansion)
  "Yanks the file path of the current buffer."
  (interactive "P")
  (let ((path (jag-get-current-buffer-file-path use-full-expansion)))
    (kill-new path)
    (message "%s" path)))

(defun jag-yank-directory-path (&optional use-full-expansion)
  "Yanks the file path of the current buffer."
  (interactive "P")
  (let ((path (file-name-directory (jag-get-current-buffer-file-path
                                    use-full-expansion))))
    (kill-new path)
    (message "%s" path)))

(defun jag-yank-last-message ()
  "Yank the last message from the *Messages* buffer."
  (interactive)
  (with-current-buffer "*Messages*"
    ;; Not wrapping in save excursion, since Emacs knows how to modify
    ;; the *Messages* buffer.
    (goto-char (point-max))
    ;; If there's an empty line at the end, that's probably not
    ;; what we want, so go up one line.
    (when (eq (point-max) (line-beginning-position))
      (forward-line -1))
    (let* ((last-line (buffer-substring
                       (line-beginning-position)
                       (line-end-position)))
           (max-snippet-length 35)
           (snippet (if (> (length last-line) max-snippet-length)
                        (concat
                         (substring last-line 0 max-snippet-length)
                         "...")
                      last-line)))
      (kill-new last-line)
      (message "Yanked message: \"%s\"" snippet))))

(defun jag-get-current-buffer-file-path (use-full-expansion)
  "Get the file path from the current buffer"
  (cond
   ((string-equal major-mode "dired-mode")
    (jag--get-dired-file-path use-full-expansion))
   ((eq (buffer-file-name) nil)
    nil)
   (t
    (jag--get-buffer-file-path use-full-expansion))))

(defun jag--get-dired-file-path (use-full-expansion)
  "Yanks the current file path from a dired buffer."
  default-directory)

(defun jag--get-buffer-file-path (use-full-expansion)
  "Yanks the current file path from the buffer."
  (let ((path (buffer-file-name)))
    (if use-full-expansion
        path
      (abbreviate-file-name path))))

(provide 'jag-funcs-yank)
;;; jag-funcs-yank.el ends here
