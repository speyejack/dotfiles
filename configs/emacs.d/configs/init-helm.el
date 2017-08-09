;;; init-helm.el --- Package description
;;; Commentary:

;;; Code:
(use-package helm
		 :ensure t
		 :config
		 (helm-mode 1)
		 (define-key helm-map (kbd "C-j") 'helm-next-line)
		 (define-key helm-map (kbd "C-k") 'helm-previous-line)
		 (define-key helm-map (kbd "C-u") 'helm-previous-page)
		 (define-key helm-map (kbd "C-d") 'helm-next-page)
		 (define-key helm-find-files-map (kbd "C-h") 'helm-find-files-up-one-level)
		 (define-key helm-find-files-map (kbd "C-l") 'helm-ff-RET)
		 (define-key global-map (kbd "C-x C-f") 'helm-find-files)
		 (define-key global-map (kbd "C-x C-b") 'helm-mini)
		 (define-key global-map (kbd "M-x") 'helm-M-x)

		 (use-package helm-descbinds
		   :ensure t
		   :config
		   (helm-descbinds-mode)))

(provide 'init-helm)
;;; init-helm.el ends here
