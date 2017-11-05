;;; init-anzu.el --- Search-match-counter-with-current/total
;;; Commentary:

;;; Code:

(defun jag--add-anzu-hooks ()
  "Add hooks to anzu."
  (jag--add-anzu-key-hooks)
  (jag--add-anzu-other-hooks))

(defun jag--add-anzu-key-hooks ()
  "Add keyboard hooks to anzu.")

(defun jag--add-anzu-other-hooks ()
  "Add other hooks to anzu.")

(defun jag--set-anzu-key-bindings ()
  "Set up keybindings for anzu.")

(defun jag--setup-anzu-config ()
  "Set up personal configuation for anzu.")

(defun jag--load-anzu-requires ()
  "Load required sub packages for anzu.")

(use-package anzu
  :init
  (jag--load-anzu-requires)
  (jag--add-anzu-hooks)
  :ensure t
  :defer (evil-search-forward evil-search-backward)
  :config
  (jag--set-anzu-key-bindings)
  (jag--setup-anzu-config))

(provide 'init-anzu)
;;; init-anzu.el ends here
