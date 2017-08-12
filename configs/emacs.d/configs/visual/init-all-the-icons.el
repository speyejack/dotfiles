;;; init-all-the-icons.el --- ADD-ALL-THE-ICONS!
;;; Commentary:

;;; Code:

(defun jag--set-all-the-icons-key-bindings ()
  "Set up keybindings for all-the-icons.")

(defun jag--setup-all-the-icons-config ()
  "Set up personal configuation for all-the-icons.")

(defun jag--load-all-the-icons-requires ()
  "Load required sub packages for all-the-icons."
  (require 'init-all-the-icons-dired))

(use-package all-the-icons
  :ensure t
  :config
  (jag--load-all-the-icons-requires)
  (jag--set-all-the-icons-key-bindings)
  (jag--setup-all-the-icons-config))

(provide 'init-all-the-icons)
;;; init-all-the-icons.el ends here
