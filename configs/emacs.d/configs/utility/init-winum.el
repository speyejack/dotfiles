;;; init-winum.el --- Shows-a-number-for-each-window
;;; Commentary:

;;; Code:

(defun jag--add-winum-hooks ()
  "Add hooks to winum."
  (jag--add-winum-key-hooks)
  (jag--add-winum-other-hooks))

(defun jag--add-winum-key-hooks ()
  "Add keyboard hooks to winum.")

(defun jag--add-winum-other-hooks ()
  "Add other hooks to winum.")

(defun jag--set-winum-key-bindings ()
  "Set up keybindings for winum.")

(defun jag--setup-winum-config ()
  "Set up personal configuation for winum.")

(defun jag--load-winum-requires ()
  "Load required sub packages for winum.")

(use-package winum
  :init
  (jag--load-winum-requires)
  (jag--add-winum-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-winum-key-bindings)
  (jag--setup-winum-config))

(provide 'init-winum)
;;; init-winum.el ends here
