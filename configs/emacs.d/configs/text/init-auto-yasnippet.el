;;; init-auto-yasnippet.el --- Allows-for-temporary-snippets
;;; Commentary:

;;; Code:

(defun jag--set-auto-yasnippet-key-bindings ()
  "Set up keybindings for auto-yasnippet.")

(defun jag--setup-auto-yasnippet-config ()
  "Set up personal configuation for auto-yasnippet.")

(defun jag--load-auto-yasnippet-requires ()
  "Load required sub packages for auto-yasnippet.")

(use-package auto-yasnippet
  :ensure t
  :config
  (jag--load-auto-yasnippet-requires)
  (jag--set-auto-yasnippet-key-bindings)
  (jag--setup-auto-yasnippet-config))

(provide 'init-auto-yasnippet)
;;; init-auto-yasnippet.el ends here
