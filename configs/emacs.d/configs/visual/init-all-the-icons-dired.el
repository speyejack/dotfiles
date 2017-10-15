;;; init-all-the-icons-dired.el --- ADD-ALL-THE-ICONS! ...to-dired
;;; Commentary:

;;; Code:

(defun jag--add-all-the-icons-dired-hooks ()
  "Add hooks to all-the-icons-dired."
  (jag--add-all-the-icons-dired-key-hooks)
  (jag--add-all-the-icons-dired-other-hooks))

(defun jag--add-all-the-icons-dired-key-hooks ()
  "Add keyboard hooks to all-the-icons-dired.")

(defun jag--add-all-the-icons-dired-other-hooks ()
  "Add other hooks to all-the-icons-dired.")

(defun jag--set-all-the-icons-dired-key-bindings ()
  "Set up keybindings for all-the-icons-dired.")

(defun jag--setup-all-the-icons-dired-config ()
  "Set up personal configuation for all-the-icons-dired.")

(defun jag--load-all-the-icons-dired-requires ()
  "Load required sub packages for all-the-icons-dired.")

(use-package all-the-icons-dired
  :init
  (jag--load-all-the-icons-dired-requires)
  (jag--add-all-the-icons-dired-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-all-the-icons-dired-key-bindings)
  (jag--setup-all-the-icons-dired-config))

(provide 'init-all-the-icons-dired)
;;; init-all-the-icons-dired.el ends here
