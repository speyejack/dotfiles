;;; init-helm.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-helm-key-bindings ()
  "Set up keybindings for helm."
  (define-key helm-map (kbd "C-j") 'helm-next-line)
  (define-key helm-map (kbd "C-k") 'helm-previous-line)
  (define-key helm-map (kbd "C-u") 'helm-previous-page)
  (define-key helm-map (kbd "C-d") 'helm-next-page)
  (define-key helm-find-files-map (kbd "C-h") 'helm-find-files-up-one-level)
  (define-key helm-find-files-map (kbd "C-l") 'helm-ff-RET)
  (define-key global-map (kbd "C-x C-f") 'helm-find-files)
  (define-key global-map (kbd "C-x C-b") 'helm-mini)
  (define-key global-map (kbd "M-x") 'helm-M-x))

(defun jag--setup-helm-config ()
  "Set up personal configuation for helm."
  (helm-mode 1))

(defun jag--load-helm-requires ()
  "Load required sub packages for helm."
  (require 'init-helm-ag)
  (require 'init-helm-c-yasnippet)
  (require 'init-helm-company)
  (require 'init-helm-descbinds)
  (require 'init-helm-flx)
  (require 'init-helm-gitignore)
  (require 'init-helm-gtags)
  (require 'init-helm-make)
  (require 'init-helm-mode-manager)
  (require 'init-helm-projectile)
  (require 'init-helm-swoop))

(use-package helm
  :ensure t
  :config
  (jag--load-helm-requires)
  (jag--set-helm-key-bindings)
  (jag--setup-helm-config))

(provide 'init-helm)
;;; init-helm.el ends here
