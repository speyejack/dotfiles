;;; init-spaceline-all-the-icons.el --- ADD-ALL-THE-ICONS! ...to-spaceline
;;; Commentary:

;;; Code:

(defun jag--add-spaceline-all-the-icons-hooks ()
  "Add hooks to spaceline-all-the-icons."
  (jag--add-spaceline-all-the-icons-key-hooks)
  (jag--add-spaceline-all-the-icons-other-hooks))

(defun jag--add-spaceline-all-the-icons-key-hooks ()
  "Add key hooks to spaceline-all-the-icons.")

(defun jag--add-spaceline-all-the-icons-other-hooks ()
  "Add mode other to spaceline-all-the-icons.")

(defun jag--set-spaceline-all-the-icons-key-bindings ()
  "Set up keybindings for spaceline-all-the-icons.")

(defun jag--setup-spaceline-all-the-icons-config ()
  "Set up personal configuation for spaceline-all-the-icons."
  (spaceline-all-the-icons-theme))

(defun jag--load-spaceline-all-the-icons-requires ()
  "Load required sub packages for spaceline-all-the-icons.")

(use-package spaceline-all-the-icons
  :init
  (jag--load-spaceline-all-the-icons-requires)
  (jag--add-spaceline-all-the-icons-hooks)
  :ensure t
  :after spaceline
  :disabled
  :config
  (jag--set-spaceline-all-the-icons-key-bindings)
  (jag--setup-spaceline-all-the-icons-config))

(provide 'init-spaceline-all-the-icons)
;;; init-spaceline-all-the-icons.el ends here