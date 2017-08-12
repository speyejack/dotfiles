;;; init-s.el --- String-manipulation-library-for-emacs
;;; Commentary:

;;; Code:

(defun jag--set-s-key-bindings ()
  "Set up keybindings for s.")

(defun jag--setup-s-config ()
  "Set up personal configuation for s.")

(defun jag--load-s-requires ()
  "Load required sub packages for s.")

(use-package s
  :ensure t
  :config
  (jag--load-s-requires)
  (jag--set-s-key-bindings)
  (jag--setup-s-config))

(provide 'init-s)
;;; init-s.el ends here
