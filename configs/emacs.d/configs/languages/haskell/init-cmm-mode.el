;;; init-cmm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-cmm-mode-key-bindings ()
  "Set up keybindings for cmm-mode.")

(defun jag--setup-cmm-mode-config ()
  "Set up personal configuation for cmm-mode.")

(defun jag--load-cmm-mode-requires ()
  "Load required sub packages for cmm-mode.")

(use-package cmm-mode
  :ensure t
  :config
  (jag--load-cmm-mode-requires)
  (jag--set-cmm-mode-key-bindings)
  (jag--setup-cmm-mode-config))

(provide 'init-cmm-mode)
;;; init-cmm-mode.el ends here
