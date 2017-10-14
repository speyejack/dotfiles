;;; init-eyebrowse.el --- Emacs-workspace-manager-like-i3
;;; Commentary:

;;; Code:

(defun jag--add-eyebrowse-hooks ()
  "Add hooks to eyebrowse."
  (jag--add-eyebrowse-key-hooks)
  (jag--add-eyebrowse-other-hooks))

(defun jag--add-eyebrowse-key-hooks ()
  "Add keyboard hooks to eyebrowse.")

(defun jag--add-eyebrowse-other-hooks ()
  "Add other hooks to eyebrowse.")

(defun jag--set-eyebrowse-key-bindings ()
  "Set up keybindings for eyebrowse.")

(defun jag--setup-eyebrowse-config ()
  "Set up personal configuation for eyebrowse.")

(defun jag--load-eyebrowse-requires ()
  "Load required sub packages for eyebrowse.")

(use-package eyebrowse
  :init
  (jag--load-eyebrowse-requires)
  (jag--add-eyebrowse-hooks)
  :ensure t
  :config
  (jag--set-eyebrowse-key-bindings)
  (jag--setup-eyebrowse-config))

(provide 'init-eyebrowse)
;;; init-eyebrowse.el ends here