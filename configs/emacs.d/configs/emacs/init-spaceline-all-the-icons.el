;;; init-spaceline-all-the-icons.el --- ADD-ALL-THE-ICONS! ...to-spaceline
;;; Commentary:

;;; Code:

(defun jag--set-spaceline-all-the-icons-key-bindings ()
  "Set up keybindings for spaceline-all-the-icons.")

(defun jag--setup-spaceline-all-the-icons-config ()
  "Set up personal configuation for spaceline-all-the-icons."
  (spaceline-all-the-icons-theme))

(defun jag--load-spaceline-all-the-icons-requires ()
  "Load required sub packages for spaceline-all-the-icons.")

(use-package spaceline-all-the-icons
  :ensure t
  :after spaceline
  :config
  (jag--load-spaceline-all-the-icons-requires)
  (jag--set-spaceline-all-the-icons-key-bindings)
  (jag--setup-spaceline-all-the-icons-config))

(provide 'init-spaceline-all-the-icons)
;;; init-spaceline-all-the-icons.el ends here
