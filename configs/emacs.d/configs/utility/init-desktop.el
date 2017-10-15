;;; init-desktop.el --- Saves-previous-session
;;; Commentary:

;;; Code:

(defun jag--add-desktop-hooks ()
  "Add hooks to desktop."
  (jag--add-desktop-key-hooks)
  (jag--add-desktop-other-hooks))

(defun jag--add-desktop-key-hooks ()
  "Add keyboard hooks to desktop.")

(defun jag--add-desktop-other-hooks ()
  "Add other hooks to desktop.")

(defun jag--set-desktop-key-bindings ()
  "Set up keybindings for desktop.")

(defun jag--setup-desktop-config ()
  "Set up personal configuation for desktop.")

(defun jag--load-desktop-requires ()
  "Load required sub packages for desktop.")

(use-package desktop
  :init
  (jag--load-desktop-requires)
  (jag--add-desktop-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-desktop-key-bindings)
  (jag--setup-desktop-config))

(provide 'init-desktop)
;;; init-desktop.el ends here
