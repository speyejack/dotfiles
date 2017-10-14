;;; init-fancy-battery.el --- Adds-a-battery-indicator-to-emacs
;;; Commentary:

;;; Code:

(defun jag--add-fancy-battery-hooks ()
  "Add hooks to fancy-battery."
  (jag--add-fancy-battery-key-hooks)
  (jag--add-fancy-battery-other-hooks))

(defun jag--add-fancy-battery-key-hooks ()
  "Add keyboard hooks to fancy-battery.")

(defun jag--add-fancy-battery-other-hooks ()
  "Add other hooks to fancy-battery.")

(defun jag--set-fancy-battery-key-bindings ()
  "Set up keybindings for fancy-battery.")

(defun jag--setup-fancy-battery-config ()
  "Set up personal configuation for fancy-battery."
  (fancy-battery-mode)
  (setq fancy-battery-show-percentage 1))

(defun jag--load-fancy-battery-requires ()
  "Load required sub packages for fancy-battery.")

(use-package fancy-battery
  :init
  (jag--load-fancy-battery-requires)
  (jag--add-fancy-battery-hooks)
  :ensure t
  :config
  (jag--set-fancy-battery-key-bindings)
  (jag--setup-fancy-battery-config))

(provide 'init-fancy-battery)
;;; init-fancy-battery.el ends here