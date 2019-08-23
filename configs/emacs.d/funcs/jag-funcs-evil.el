;;; jag-funcs-evil.el --- Functions for evil

;;; Commentary:
;;

;;; Code:

(evil-define-motion jag-evil-next-visual-line-5 (count)
  "Move the cursor 5 lines down."
  :type line
  (let (line-move-visual)
    (evil-next-visual-line (* 5 (or count 1)))))

(evil-define-motion jag-evil-previous-visual-line-5 (count)
  "Move the cursor 5 lines up."
  :type line
  (let (line-move-visual)
    (evil-previous-visual-line (* 5 (or count 1)))))

(defun jag-evil-reformat-buffer () (interactive)
	   (save-excursion
		 (evil-indent (point-min) (point-max))))

(defun jag-goto-middle-of-line ()
  "Move cursor to middle of the line."
  (interactive)
  (goto-char
   (/
    (+ (line-end-position) (line-beginning-position))
    2)))

(provide 'jag-funcs-evil)
;;; jag-funcs-evil.el ends here
