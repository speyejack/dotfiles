;;; jag-modules-git.el ---

;;; Commentary:

;;; Code:

;; magit
;;
;; A Git porcelain inside Emacs.
;;
;; Source: https://github.com/magit/magit

(use-package magit
  :general
  (jag--leader-def "g" 'magit-status)
  :diminish)

;; git-timemachine
;;
;; Walk through git revisions of a file
;;
;; Source: https://gitlab.com/pidu/git-timemachine

(use-package git-timemachine
  :general
  (jag--leader-def "G" 'git-timemachine)
  (:keymaps 'git-timemachine-mode-map
   ;; Remove default timemachine mode bindings
   "n" nil
   "p" nil
   "w" nil
   "W" nil
   ;; Add my own key bindings
   "J" 'git-timemachine-show-previous-revision
   "K" 'git-timemachine-show-next-revision
   "Y" 'git-timemachine-kill-revision
   "q" 'git-timemachine-quit)
  :diminish
  :config
  ;; Override evil keymap with timemachine's map
  (evil-make-intercept-map git-timemachine-mode-map 'normal)
  (add-hook 'git-timemachine-mode-hook #'evil-normalize-keymaps))

(provide 'jag-modules-git)
;;; jag-modules-git.el ends here
