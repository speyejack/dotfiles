;;; init-nose.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-nose-hooks ()
  "Add hooks to nose."
  (jag--add-nose-key-hooks)
  (jag--add-nose-other-hooks))

(defun jag--add-nose-key-hooks ()
  "Add key hooks to nose.")

(defun jag--add-nose-other-hooks ()
  "Add mode other to nose.")

(defun jag--set-nose-key-bindings ()
  "Set up keybindings for nose.")

(defun jag--setup-nose-config ()
  "Set up personal configuation for nose.")

(defun jag--load-nose-requires ()
  "Load required sub packages for nose.")

(use-package nose
  :init
  (jag--load-nose-requires)
  (jag--add-nose-hooks)
  :ensure t
  :config
  (jag--set-nose-key-bindings)
  (jag--setup-nose-config))

(provide 'init-nose)
;;; init-nose.el ends here