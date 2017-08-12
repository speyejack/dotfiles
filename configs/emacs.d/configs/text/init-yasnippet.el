;;; init-yasnippet.el --- Allows-for-use-of-snippets-(macro-expansion)
;;; Commentary:

;;; Code:

(defun jag--set-yasnippet-key-bindings ()
  "Set up keybindings for yasnippet.")

(defun jag--setup-yasnippet-config ()
  "Set up personal configuation for yasnippet."
  (yas-global-mode 1))

(defun jag--load-yasnippet-requires ()
  "Load required sub packages for yasnippet.")

(use-package yasnippet
  :ensure t
  :config
  (jag--load-yasnippet-requires)
  (jag--set-yasnippet-key-bindings)
  (jag--setup-yasnippet-config))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
