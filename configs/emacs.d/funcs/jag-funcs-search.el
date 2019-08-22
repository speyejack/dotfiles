;;; jag-funcs-search.el --- Functions for search

;;; Commentary:

;;; Code:

(defun jag-highlight-symbol ()
  "Safe wrapper for ahs-highlight-now"
  (interactive)
  (eval '(progn
           (jag--ensure-ahs-enabled-locally)
           (ahs-highlight-now)) nil)
  (let* ((symbol (evil-find-thing t 'symbol))
         (regexp (concat "\\<" symbol "\\>")))
    (setq isearch-string regexp)
    (setq isearch-regexp regexp)
    (setq evil-ex-search-pattern (evil-ex-make-search-pattern regexp))

    (setq isearch-forward t)
    (isearch-update-ring isearch-string t)
    (evil-push-search-history isearch-string 'forward)))

(defun jag--ensure-ahs-enabled-locally ()
  "Ensures `auto-highlight-symbol' is enabled for the local buffer."
  (unless (bound-and-true-p ahs-mode-line)
    (auto-highlight-symbol-mode)))

(provide 'jag-funcs-search)
;;; jag-funcs-search.el ends here
