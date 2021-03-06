;;; jag-modes-info.el --- Config for mode info

;;; Commentary:

;;; Code:

(use-package jag-funcs-info
  :defer t
  :straight nil)

(use-package info
  :defer t
  :straight nil
  :bind (:map Info-mode-map
		 ("M-L" . 'Info-history-forward)
		 ("M-H" . 'Info-history-back)
		 ("M-l" . 'Info-follow-nearest-node)
		 ("M-h" . 'Info-up)
		 ("M-j" . 'Info-next)
		 ("M-k" . 'Info-prev)))

(provide 'jag-modes-info)
;;; jag-modes-info.el ends here
