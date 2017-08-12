;;; init-eyebrowse.el --- Emacs-workspace-manager-like-i3
;;; Commentary:

;;; Code:

(defun jag--set-eyebrowse-key-bindings ()
  "Set up keybindings for eyebrowse.")

(defun jag--setup-eyebrowse-config ()
  "Set up personal configuation for eyebrowse.")

(defun jag--load-eyebrowse-requires ()
  "Load required sub packages for eyebrowse.")

(use-package eyebrowse
  :ensure t
  :config
  (jag--load-eyebrowse-requires)
  (jag--set-eyebrowse-key-bindings)
  (jag--setup-eyebrowse-config))

(provide 'init-eyebrowse)
;;; init-eyebrowse.el ends here
