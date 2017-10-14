;;; init-helm.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-helm-hooks ()
  "Add hooks to helm."
  (jag--add-helm-key-hooks)
  (jag--add-helm-other-hooks))

(defun jag--add-helm-key-hooks ()
  "Add key hooks to helm.")

(defun jag--add-helm-other-hooks ()
  "Add mode other to helm.")

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
  :init
  (jag--load-helm-requires)
  (jag--add-helm-hooks)
  :ensure t
  :diminish 'helm-mode
  :config
  (jag--set-helm-key-bindings)
  (jag--setup-helm-config))

(provide 'init-helm)
;;; init-helm.el ends here