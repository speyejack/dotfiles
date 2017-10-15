;;; init-yasnippet.el --- Allows-for-use-of-snippets-(macro-expansion)
;;; Commentary:

;;; Code:

(defun jag--add-yasnippet-hooks ()
  "Add hooks to yasnippet."
  (jag--add-yasnippet-key-hooks)
  (jag--add-yasnippet-other-hooks))

(defun jag--add-yasnippet-key-hooks ()
  "Add keyboard hooks to yasnippet.")

(defun jag--add-yasnippet-other-hooks ()
  "Add other hooks to yasnippet.")

(defun jag--set-yasnippet-key-bindings ()
  "Set up keybindings for yasnippet.")

(defun jag--setup-yasnippet-config ()
  "Set up personal configuation for yasnippet."
  (yas-global-mode 1))

(defun jag--load-yasnippet-requires ()
  "Load required sub packages for yasnippet.")

(use-package yasnippet
  :init
  (jag--load-yasnippet-requires)
  (jag--add-yasnippet-hooks)
  :ensure t
  :defer t
  :diminish 'yas-global-mode
  :diminish 'yas-minor-mode
  :config
  (jag--set-yasnippet-key-bindings)
  (jag--setup-yasnippet-config))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
