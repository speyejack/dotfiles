;;; init-spaceline.el --- Adds-a-spacemacs-mode-line-theme, probably-conflicts-with-other-mode-line-themes
;;; Commentary:

;;; Code:

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
  :ensure t
  :config
  (jag--load-spaceline-requires)
  (jag--set-spaceline-key-bindings)
  (jag--setup-spaceline-config))

(provide 'init-spaceline)
;;; init-spaceline.el ends here
