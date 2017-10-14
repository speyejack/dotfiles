;;; init-s.el --- String-manipulation-library-for-emacs
;;; Commentary:

;;; Code:

(defun jag--add-s-hooks ()
  "Add hooks to s."
  (jag--add-s-key-hooks)
  (jag--add-s-other-hooks))

(defun jag--add-s-key-hooks ()
  "Add keyboard hooks to s.")

(defun jag--add-s-other-hooks ()
  "Add other hooks to s.")

(defun jag--set-s-key-bindings ()
  "Set up keybindings for s.")

(defun jag--setup-s-config ()
  "Set up personal configuation for s.")

(defun jag--load-s-requires ()
  "Load required sub packages for s.")

(use-package s
  :init
  (jag--load-s-requires)
  (jag--add-s-hooks)
  :ensure t
  :config
  (jag--set-s-key-bindings)
  (jag--setup-s-config))

(provide 'init-s)
;;; init-s.el ends here