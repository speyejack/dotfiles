;;; init-cmm-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-cmm-mode-hooks ()
  "Add hooks to cmm-mode."
  (jag--add-cmm-mode-key-hooks)
  (jag--add-cmm-mode-other-hooks))

(defun jag--add-cmm-mode-key-hooks ()
  "Add key hooks to cmm-mode.")

(defun jag--add-cmm-mode-other-hooks ()
  "Add mode other to cmm-mode.")

(defun jag--set-cmm-mode-key-bindings ()
  "Set up keybindings for cmm-mode.")

(defun jag--setup-cmm-mode-config ()
  "Set up personal configuation for cmm-mode.")

(defun jag--load-cmm-mode-requires ()
  "Load required sub packages for cmm-mode.")

(use-package cmm-mode
  :init
  (jag--load-cmm-mode-requires)
  (jag--add-cmm-mode-hooks)
  :ensure t
  :config
  (jag--set-cmm-mode-key-bindings)
  (jag--setup-cmm-mode-config))

(provide 'init-cmm-mode)
;;; init-cmm-mode.el ends here