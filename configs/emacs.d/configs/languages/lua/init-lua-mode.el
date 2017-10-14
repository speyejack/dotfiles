;;; init-lua-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-lua-mode-hooks ()
  "Add hooks to lua-mode."
  (jag--add-lua-mode-key-hooks)
  (jag--add-lua-mode-other-hooks))

(defun jag--add-lua-mode-key-hooks ()
  "Add keyboard hooks to lua-mode.")

(defun jag--add-lua-mode-other-hooks ()
  "Add other hooks to lua-mode.")

(defun jag--set-lua-mode-key-bindings ()
  "Set up keybindings for lua-mode.")

(defun jag--setup-lua-mode-config ()
  "Set up personal configuation for lua-mode.")

(defun jag--load-lua-mode-requires ()
  "Load required sub packages for lua-mode.")

(use-package lua-mode
  :init
  (jag--load-lua-mode-requires)
  (jag--add-lua-mode-hooks)
  :ensure t
  :config
  (jag--set-lua-mode-key-bindings)
  (jag--setup-lua-mode-config))

(provide 'init-lua-mode)
;;; init-lua-mode.el ends here