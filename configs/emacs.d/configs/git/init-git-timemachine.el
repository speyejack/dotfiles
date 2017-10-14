;;; init-git-timemachine.el --- Allows-you-to-travel-back-through-file-git-history
;;; Commentary:

;;; Code:

(defun jag--add-git-timemachine-hooks ()
  "Add hooks to git-timemachine."
  (jag--add-git-timemachine-key-hooks)
  (jag--add-git-timemachine-other-hooks))

(defun jag--add-git-timemachine-key-hooks ()
  "Add key hooks to git-timemachine.")

(defun jag--add-git-timemachine-other-hooks ()
  "Add mode other to git-timemachine.")

(defun jag--set-git-timemachine-key-bindings ()
  "Set up keybindings for git-timemachine."
  ;; Remove default timemachine mode bindings
  (define-key git-timemachine-mode-map (kbd "n") nil)
  (define-key git-timemachine-mode-map (kbd "p") nil)
  (define-key git-timemachine-mode-map (kbd "w") nil)
  (define-key git-timemachine-mode-map (kbd "W") nil)
  ;; Add my own key bindings
  (define-key git-timemachine-mode-map (kbd "J") 'git-timemachine-show-previous-revision)
  (define-key git-timemachine-mode-map (kbd "K") 'git-timemachine-show-next-revision)
  (define-key git-timemachine-mode-map (kbd "Y") 'git-timemachine-kill-revision)
  (define-key git-timemachine-mode-map (kbd "q") 'git-timemachine-quit))

(defun jag--setup-git-timemachine-config ()
  "Set up personal configuation for git-timemachine."

  ;; Override evil keymap with timemachine's map
  (eval-after-load 'git-timemachine
	(lambda () (evil-make-intercept-map git-timemachine-mode-map 'normal))))

(defun jag--load-git-timemachine-requires ()
  "Load required sub packages for git-timemachine.")

(use-package git-timemachine
  :init
  (jag--load-git-timemachine-requires)
  (jag--add-git-timemachine-hooks)
  :ensure t
  :config
  (jag--set-git-timemachine-key-bindings)
  (jag--setup-git-timemachine-config))

(provide 'init-git-timemachine)
;;; init-git-timemachine.el ends here