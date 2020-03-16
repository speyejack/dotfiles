;;; jag-modules-git.el ---

;;; Commentary:

;;; Code:

;; magit
;;
;; A Git porcelain inside Emacs.
;;
;; Source: https://github.com/magit/magit

(use-package magit
  :commands 'magit-status
  :config
  (evil-set-initial-state 'git-commit-mode 'insert)
  :diminish)

;; git-timemachine
;;
;; Walk through git revisions of a file
;;
;; Source: https://gitlab.com/pidu/git-timemachine

(use-package git-timemachine
  :commands (git-timemachine)
  :bind
  (:map git-timemachine-mode-map
   ;; Remove default timemachine mode bindings
   ("n" . nil)
   ("p" . nil)
   ("w" . nil)
   ("W" . nil)
   ;; Add my own key bindings
   ("J" . 'git-timemachine-show-previous-revision)
   ("K" . 'git-timemachine-show-next-revision)
   ("Y" . 'git-timemachine-kill-revision)
   ("q" . 'git-timemachine-quit))
  :diminish
  :config
  ;; Override evil keymap with timemachine's map
  (evil-make-overriding-map git-timemachine-mode-map 'normal)
  (add-hook 'git-timemachine-mode-hook #'evil-normalize-keymaps))

;; helm-gitignore
;;
;; Generate .gitignore files with gitignore.io.
;;
;; Source: https://github.com/jupl/helm-gitignore

(use-package helm-gitignore
  :commands 'helm-gitignore
  :diminish
  :after helm)

;; orgit
;;
;; Support for Org links to Magit buffers
;;
;; https://github.com/magit/orgit

(use-package orgit
  :diminish
  :after magit
  :commands 'orgit-store-link
  :init
  (define-key magit-mode-map [remap org-store-link] 'orgit-store-link))

;; git-flow
;;
;; GitFlow plugin for magit.el
;;
;; Source: https://github.com/jtatarik/magit-gitflow

(use-package magit-gitflow
  :diminish
  :after magit
  :commands 'magit-gitflow-popup
  :init
  (define-key magit-mode-map "#" 'magit-gitflow-popup)
  :config
  (turn-on-magit-gitflow))

;; git-messenger
;;
;; Emacs Port of git-messenger.vim
;;
;; Source: https://github.com/emacsorphanage/git-messenger

(use-package git-messenger
  :commands 'git-messenger:popup-message
  :diminish)

(provide 'jag-modules-git)
;;; jag-modules-git.el ends here
