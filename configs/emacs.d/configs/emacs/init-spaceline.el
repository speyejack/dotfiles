;;; init-spaceline.el --- Adds-a-spacemacs-mode-line-theme, probably-conflicts-with-other-mode-line-themes
;;; Commentary:

;;; Code:

(defun jag--add-spaceline-hooks ()
  "Add hooks to spaceline."
  (jag--add-spaceline-key-hooks)
  (jag--add-spaceline-other-hooks))

(defun jag--add-spaceline-key-hooks ()
  "Add keyboard hooks to spaceline.")

(defun jag--add-spaceline-other-hooks ()
  "Add other hooks to spaceline.")

(defun jag--set-spaceline-key-bindings ()
  "Set up keybindings for spaceline.")

(defun jag--setup-spaceline-config ()
  "Set up personal configuation for spaceline."
  (require 'spaceline-config)
  (spaceline-spacemacs-theme)
  (spaceline-toggle-global-on))

(defun jag--load-spaceline-requires ()
  "Load required sub packages for spaceline."
  (require 'init-spaceline-all-the-icons))

(use-package spaceline
  :init
  (jag--load-spaceline-requires)
  (jag--add-spaceline-hooks)
  :ensure t
  :config
  (jag--set-spaceline-key-bindings)
  (jag--setup-spaceline-config))

(provide 'init-spaceline)
;;; init-spaceline.el ends here