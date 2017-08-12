;;; init-rainbow-delimiters.el --- Colors-delimiters-based-on-depth-level
;;; Commentary:

;;; Code:

(defun jag--set-rainbow-delimiters-key-bindings ()
  "Set up keybindings for rainbow-delimiters.")

(defun jag--setup-rainbow-delimiters-config ()
  "Set up personal configuation for rainbow-delimiters.")

(defun jag--load-rainbow-delimiters-requires ()
  "Load required sub packages for rainbow-delimiters.")

(use-package rainbow-delimiters
  :ensure t
  :config
  (jag--load-rainbow-delimiters-requires)
  (jag--set-rainbow-delimiters-key-bindings)
  (jag--setup-rainbow-delimiters-config))

(provide 'init-rainbow-delimiters)
;;; init-rainbow-delimiters.el ends here
