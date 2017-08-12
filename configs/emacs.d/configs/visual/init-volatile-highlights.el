;;; init-volatile-highlights.el --- Highlights-last-yank/undo
;;; Commentary:

;;; Code:

(defun jag--set-volatile-highlights-key-bindings ()
  "Set up keybindings for volatile-highlights.")

(defun jag--setup-volatile-highlights-config ()
  "Set up personal configuation for volatile-highlights."
  (volatile-highlights-mode t))

(defun jag--load-volatile-highlights-requires ()
  "Load required sub packages for volatile-highlights.")

(use-package volatile-highlights
  :ensure t
  :config
  (jag--load-volatile-highlights-requires)
  (jag--set-volatile-highlights-key-bindings)
  (jag--setup-volatile-highlights-config))

(provide 'init-volatile-highlights)
;;; init-volatile-highlights.el ends here
