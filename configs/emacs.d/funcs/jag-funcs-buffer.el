;;; jag-funcs-buffer.el --- Functions for buffer menu

;;; Commentary:
;; 

;;; Code:

(defun jag-force-kill-this-buffer (&optional arg)
  "Force kill this buffer.
If the universal prefix ARG is used then kill the window too."
  (interactive "P")
  (let ((kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions)))
	(kill-this-buffer)
	(if (equal '(4) arg)
		(delete-window))))

(defun jag-copy-clipboard-to-whole-buffer ()
  "Copy clipboard and replace buffer."
  (interactive)
  (delete-region (point-min) (point-max))
  (clipboard-yank)
  (deactivate-mark))

(defun jag-copy-whole-buffer-to-clipboard ()
  "Copy entire buffer to clipboard."
  (interactive)
  (clipboard-kill-ring-save (point-min) (point-max)))

;; Found at http://emacswiki.org/emacs/KillingBuffers.
(defun jag-kill-other-buffers (&optional arg)
  "Kill all other buffers.
If the universal prefix ARG is non-nil then kill the windows too."
  (interactive "P")
  (when (yes-or-no-p (format "Killing all buffers except \"%s\"? "
                             (buffer-name)))
    (mapc 'kill-buffer (delq (current-buffer) (buffer-list)))
    (when (equal '(4) arg) (delete-other-windows))
    (message "Buffers deleted!")))

;; our own implementation of kill-this-buffer from menu-bar.el
(defun jag-kill-this-buffer (&optional arg)
  "Kill the current buffer.
If the universal prefix ARG is non-nil then also kill the window."
  (interactive "P")
  (if (window-minibuffer-p)
      (abort-recursive-edit)
    (if (equal '(4) arg)
        (kill-buffer-and-window)
      (kill-buffer))))

(defun jag-new-empty-buffer ()
  "Create a new buffer called untitled(<n>)."
  (interactive)
  (let ((newbuf (generate-new-buffer-name "untitled")))
    (switch-to-buffer newbuf)
    (prog-mode)))

(defun jag-safe-erase-buffer ()
  "Prompt before erasing the content of the file."
  (interactive)
  (if (yes-or-no-p (format "Erase content of buffer %s ? " (current-buffer)))
      (erase-buffer)))

(defun jag-force-revert-buffer ()
  "Revert the file with no prompts."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))

(defun jag-safe-revert-buffer ()
  "Prompt before reverting the file."
  (interactive)
  (revert-buffer nil nil))

(defun jag-switch-to-scratch-buffer ()
  "Switch to the `*scratch*' buffer.
Create the *scratch* buffer first if needed."
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*")))

(defun jag-shell-command-on-buffer (command &optional keep-buffer-p)
  "Prompt and run a COMMAND on the buffer.
By default, `shell-command-on-buffer' will replace the contents
of the buffer with the output of COMMAND.  If KEEP-BUFFER-P is
non-nil, keep the original buffer content."
  (interactive (list (read-shell-command "Shell command on buffer: ")))
  (shell-command-on-region
   (point-min) (point-max)
   command
   'use-current-buffer
   (not keep-buffer-p)))

(provide 'jag-funcs-buffer)
;;; jag-funcs-buffer.el ends here
