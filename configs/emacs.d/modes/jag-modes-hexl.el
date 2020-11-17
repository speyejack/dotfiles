;;; jag-modes-hexl.el --- Config for mode hexl

;;; Commentary:

;;; Code:
(use-package jag-funcs-hexl
  :defer t
  :straight nil
  :init
  (add-hook 'hexl-mode-hook
			(lambda ()
			  (evil-define-key '(normal operator visual) hexl-mode-map
				(kbd "q") 'hexl-mode-exit))))

(provide 'jag-modes-hexl)
;;; jag-modes-hexl.el ends here
