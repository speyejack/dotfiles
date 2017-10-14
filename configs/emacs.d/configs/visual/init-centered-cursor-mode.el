;;; init-centered-cursor-mode.el --- Keeps-cursor-centered-in-window
;;; Commentary:

;;; Code:

(defun jag--add-centered-cursor-mode-hooks ()
  "Add hooks to centered-cursor-mode."
  (jag--add-centered-cursor-mode-key-hooks)
  (jag--add-centered-cursor-mode-other-hooks))

(defun jag--add-centered-cursor-mode-key-hooks ()
  "Add key hooks to centered-cursor-mode.")

(defun jag--add-centered-cursor-mode-other-hooks ()
  "Add mode other to centered-cursor-mode.")

(defun jag--set-centered-cursor-mode-key-bindings ()
  "Set up keybindings for centered-cursor-mode.")

(defun jag--setup-centered-cursor-mode-config ()
  "Set up personal configuation for centered-cursor-mode."
  (add-hook 'prog-mode-hook 'centered-cursor-mode))

(defun jag--load-centered-cursor-mode-requires ()
  "Load required sub packages for centered-cursor-mode.")

(use-package centered-cursor-mode
  :init
  (jag--load-centered-cursor-mode-requires)
  (jag--add-centered-cursor-mode-hooks)
  :ensure t
  :config
  (jag--set-centered-cursor-mode-key-bindings)
  (jag--setup-centered-cursor-mode-config))

(provide 'init-centered-cursor-mode)
;;; init-centered-cursor-mode.el ends here