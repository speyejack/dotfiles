;;; init-centered-cursor-mode.el --- Keeps-cursor-centered-in-window
;;; Commentary:

;;; Code:

(defun jag--set-centered-cursor-mode-key-bindings ()
  "Set up keybindings for centered-cursor-mode.")

(defun jag--setup-centered-cursor-mode-config ()
  "Set up personal configuation for centered-cursor-mode.")

(defun jag--load-centered-cursor-mode-requires ()
  "Load required sub packages for centered-cursor-mode.")

(use-package centered-cursor-mode
  :ensure t
  :config
  (jag--load-centered-cursor-mode-requires)
  (jag--set-centered-cursor-mode-key-bindings)
  (jag--setup-centered-cursor-mode-config))

(provide 'init-centered-cursor-mode)
;;; init-centered-cursor-mode.el ends here
