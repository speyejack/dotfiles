;;; init-popwin.el --- Removes-popup-system-windows-when-they're-no-long-in-focus
;;; Commentary:

;;; Code:

(defun jag--add-popwin-hooks ()
  "Add hooks to popwin."
  (jag--add-popwin-key-hooks)
  (jag--add-popwin-other-hooks))

(defun jag--add-popwin-key-hooks ()
  "Add key hooks to popwin.")

(defun jag--add-popwin-other-hooks ()
  "Add mode other to popwin.")

(defun jag--set-popwin-key-bindings ()
  "Set up keybindings for popwin.")

(defun jag--setup-popwin-config ()
  "Set up personal configuation for popwin."
  (popwin-mode 1))

(defun jag--load-popwin-requires ()
  "Load required sub packages for popwin.")

(use-package popwin
  :init
  (jag--load-popwin-requires)
  (jag--add-popwin-hooks)
  :ensure t
  :config
  (jag--set-popwin-key-bindings)
  (jag--setup-popwin-config))

(provide 'init-popwin)
;;; init-popwin.el ends here