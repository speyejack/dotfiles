;;; init-nose.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-nose-key-bindings ()
  "Set up keybindings for nose.")

(defun jag--setup-nose-config ()
  "Set up personal configuation for nose.")

(defun jag--load-nose-requires ()
  "Load required sub packages for nose.")

(use-package nose
  :ensure t
  :config
  (jag--load-nose-requires)
  (jag--set-nose-key-bindings)
  (jag--setup-nose-config))

(provide 'init-nose)
;;; init-nose.el ends here
