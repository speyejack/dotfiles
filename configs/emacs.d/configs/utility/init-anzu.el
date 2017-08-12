;;; init-anzu.el --- Search-match-counter-with-current/total
;;; Commentary:

;;; Code:

(defun jag--set-anzu-key-bindings ()
  "Set up keybindings for anzu.")

(defun jag--setup-anzu-config ()
  "Set up personal configuation for anzu.")

(defun jag--load-anzu-requires ()
  "Load required sub packages for anzu.")

(use-package anzu
  :ensure t
  :config
  (jag--load-anzu-requires)
  (jag--set-anzu-key-bindings)
  (jag--setup-anzu-config))

(provide 'init-anzu)
;;; init-anzu.el ends here
