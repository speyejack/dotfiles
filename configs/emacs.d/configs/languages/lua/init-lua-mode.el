;;; init-lua-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-lua-mode-key-bindings ()
  "Set up keybindings for lua-mode.")

(defun jag--setup-lua-mode-config ()
  "Set up personal configuation for lua-mode.")

(defun jag--load-lua-mode-requires ()
  "Load required sub packages for lua-mode.")

(use-package lua-mode
  :ensure t
  :config
  (jag--load-lua-mode-requires)
  (jag--set-lua-mode-key-bindings)
  (jag--setup-lua-mode-config))

(provide 'init-lua-mode)
;;; init-lua-mode.el ends here
