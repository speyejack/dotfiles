;;; init-flyspell.el --- Package description
;;; Commentary:

;;; Code:

(use-package flyspell
  :ensure t
  :config
  (flyspell-mode 1)

  (use-package flyspell-correct
	:ensure t
	:config
	(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
	(use-package flyspell-correct-helm
	  :ensure t
	  :config
	  (require 'flyspell-correct-helm))))

(provide 'init-flyspell)
;;; init-flyspell.el ends here
