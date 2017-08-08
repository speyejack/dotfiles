;;; init-nlinum.el --- Package description
;;; Commentary:

;;; Code:

(use-package nlinum-relative
  :ensure t
  :config
  (nlinum-relative-setup-evil)
  (add-hook 'prog-mode-hook 'nlinum-relative-mode))

(provide 'init-nlinum)
;;; init-nlinum.el ends here
