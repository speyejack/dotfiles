;;; init-all-the-icons.el --- ADD-ALL-THE-ICONS!
;;; Commentary:

;;; Code:

(defun jag--add-all-the-icons-hooks ()
  "Add hooks to all-the-icons."
  (jag--add-all-the-icons-key-hooks)
  (jag--add-all-the-icons-other-hooks))

(defun jag--add-all-the-icons-key-hooks ()
  "Add keyboard hooks to all-the-icons.")

(defun jag--add-all-the-icons-other-hooks ()
  "Add other hooks to all-the-icons.")

(defun jag--set-all-the-icons-key-bindings ()
  "Set up keybindings for all-the-icons.")

(defun jag--setup-all-the-icons-config ()
  "Set up personal configuation for all-the-icons.")

(defun jag--load-all-the-icons-requires ()
  "Load required sub packages for all-the-icons."
  (require 'init-all-the-icons-dired))

(use-package all-the-icons
  :init
  (jag--load-all-the-icons-requires)
  (jag--add-all-the-icons-hooks)
  :ensure t
  :defer 2
  :config
  (jag--set-all-the-icons-key-bindings)
  (jag--setup-all-the-icons-config))

(provide 'init-all-the-icons)
;;; init-all-the-icons.el ends here
