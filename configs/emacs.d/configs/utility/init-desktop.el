;;; init-desktop.el --- Saves-previous-session
;;; Commentary:

;;; Code:

(defun jag--set-desktop-key-bindings ()
  "Set up keybindings for desktop.")

(defun jag--setup-desktop-config ()
  "Set up personal configuation for desktop.")

(defun jag--load-desktop-requires ()
  "Load required sub packages for desktop.")

(use-package desktop
  :ensure t
  :config
  (jag--load-desktop-requires)
  (jag--set-desktop-key-bindings)
  (jag--setup-desktop-config))

(provide 'init-desktop)
;;; init-desktop.el ends here
