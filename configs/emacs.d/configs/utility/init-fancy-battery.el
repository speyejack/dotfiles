;;; init-fancy-battery.el --- Adds-a-battery-indicator-to-emacs
;;; Commentary:

;;; Code:

(defun jag--set-fancy-battery-key-bindings ()
  "Set up keybindings for fancy-battery.")

(defun jag--setup-fancy-battery-config ()
  "Set up personal configuation for fancy-battery."
  (add-hook 'after-init-hook 'fancy-battery-mode))

(defun jag--load-fancy-battery-requires ()
  "Load required sub packages for fancy-battery.")

(use-package fancy-battery
  :ensure t
  :config
  (jag--load-fancy-battery-requires)
  (jag--set-fancy-battery-key-bindings)
  (jag--setup-fancy-battery-config))

(provide 'init-fancy-battery)
;;; init-fancy-battery.el ends here
