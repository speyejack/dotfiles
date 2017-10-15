;;; init-rainbow-delimiters.el --- Colors-delimiters-based-on-depth-level
;;; Commentary:

;;; Code:

(defun jag--add-rainbow-delimiters-hooks ()
  "Add hooks to rainbow-delimiters."
  (jag--add-rainbow-delimiters-key-hooks)
  (jag--add-rainbow-delimiters-other-hooks))

(defun jag--add-rainbow-delimiters-key-hooks ()
  "Add keyboard hooks to rainbow-delimiters.")

(defun jag--add-rainbow-delimiters-other-hooks ()
  "Add other hooks to rainbow-delimiters.")

(defun jag--set-rainbow-delimiters-key-bindings ()
  "Set up keybindings for rainbow-delimiters.")

(defun jag--setup-rainbow-delimiters-config ()
  "Set up personal configuation for rainbow-delimiters.")

(defun jag--load-rainbow-delimiters-requires ()
  "Load required sub packages for rainbow-delimiters.")

(use-package rainbow-delimiters
  :init
  (jag--load-rainbow-delimiters-requires)
  (jag--add-rainbow-delimiters-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-rainbow-delimiters-key-bindings)
  (jag--setup-rainbow-delimiters-config))

(provide 'init-rainbow-delimiters)
;;; init-rainbow-delimiters.el ends here
