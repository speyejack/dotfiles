;;; init-popwin.el --- Removes-popup-system-windows-when-they're-no-long-in-focus
;;; Commentary:

;;; Code:

(defun jag--set-popwin-key-bindings ()
  "Set up keybindings for popwin.")

(defun jag--setup-popwin-config ()
  "Set up personal configuation for popwin."
  (popwin-mode 1))

(defun jag--load-popwin-requires ()
  "Load required sub packages for popwin.")

(use-package popwin
  :ensure t
  :config
  (jag--load-popwin-requires)
  (jag--set-popwin-key-bindings)
  (jag--setup-popwin-config))

(provide 'init-popwin)
;;; init-popwin.el ends here
