;;; init-git-timemachine.el --- Allows-you-to-travel-back-through-file-git-history
;;; Commentary:

;;; Code:

(defun jag--set-git-timemachine-key-bindings ()
  "Set up keybindings for git-timemachine.")

(defun jag--setup-git-timemachine-config ()
  "Set up personal configuation for git-timemachine.")

(defun jag--load-git-timemachine-requires ()
  "Load required sub packages for git-timemachine.")

(use-package git-timemachine
  :ensure t
  :config
  (jag--load-git-timemachine-requires)
  (jag--set-git-timemachine-key-bindings)
  (jag--setup-git-timemachine-config))

(provide 'init-git-timemachine)
;;; init-git-timemachine.el ends here
