;;; init-winum.el --- Shows-a-number-for-each-window
;;; Commentary:

;;; Code:

(defun jag--set-winum-key-bindings ()
  "Set up keybindings for winum.")

(defun jag--setup-winum-config ()
  "Set up personal configuation for winum.")

(defun jag--load-winum-requires ()
  "Load required sub packages for winum.")

(use-package winum
  :ensure t
  :config
  (jag--load-winum-requires)
  (jag--set-winum-key-bindings)
  (jag--setup-winum-config))

(provide 'init-winum)
;;; init-winum.el ends here
