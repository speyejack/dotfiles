;;; init-magit.el --- Package description
;;; Commentary:

;;; Code:
(use-package magit
  :ensure t
  :config
  (require 'evil-magit)
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode))

(provide 'init-magit)
;;; init-magit.el ends here
