;;; init-auto-yasnippet.el --- Allows-for-temporary-snippets
;;; Commentary:

;;; Code:

(defun jag--add-auto-yasnippet-hooks ()
  "Add hooks to auto-yasnippet."
  (jag--add-auto-yasnippet-key-hooks)
  (jag--add-auto-yasnippet-other-hooks))

(defun jag--add-auto-yasnippet-key-hooks ()
  "Add key hooks to auto-yasnippet.")

(defun jag--add-auto-yasnippet-other-hooks ()
  "Add mode other to auto-yasnippet.")

(defun jag--set-auto-yasnippet-key-bindings ()
  "Set up keybindings for auto-yasnippet.")

(defun jag--setup-auto-yasnippet-config ()
  "Set up personal configuation for auto-yasnippet.")

(defun jag--load-auto-yasnippet-requires ()
  "Load required sub packages for auto-yasnippet.")

(use-package auto-yasnippet
  :init
  (jag--load-auto-yasnippet-requires)
  (jag--add-auto-yasnippet-hooks)
  :ensure t
  :config
  (jag--set-auto-yasnippet-key-bindings)
  (jag--setup-auto-yasnippet-config))

(provide 'init-auto-yasnippet)
;;; init-auto-yasnippet.el ends here