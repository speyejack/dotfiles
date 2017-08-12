;;; init-all-the-icons-dired.el --- ADD-ALL-THE-ICONS! ...to-dired
;;; Commentary:

;;; Code:

(defun jag--set-all-the-icons-dired-key-bindings ()
  "Set up keybindings for all-the-icons-dired.")

(defun jag--setup-all-the-icons-dired-config ()
  "Set up personal configuation for all-the-icons-dired.")

(defun jag--load-all-the-icons-dired-requires ()
  "Load required sub packages for all-the-icons-dired.")

(use-package all-the-icons-dired
  :ensure t
  :config
  (jag--load-all-the-icons-dired-requires)
  (jag--set-all-the-icons-dired-key-bindings)
  (jag--setup-all-the-icons-dired-config))

(provide 'init-all-the-icons-dired)
;;; init-all-the-icons-dired.el ends here
