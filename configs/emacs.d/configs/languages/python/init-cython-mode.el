;;; init-cython-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-cython-mode-hooks ()
  "Add hooks to cython-mode."
  (jag--add-cython-mode-key-hooks)
  (jag--add-cython-mode-other-hooks))

(defun jag--add-cython-mode-key-hooks ()
  "Add keyboard hooks to cython-mode.")

(defun jag--add-cython-mode-other-hooks ()
  "Add other hooks to cython-mode.")

(defun jag--set-cython-mode-key-bindings ()
  "Set up keybindings for cython-mode.")

(defun jag--setup-cython-mode-config ()
  "Set up personal configuation for cython-mode.")

(defun jag--load-cython-mode-requires ()
  "Load required sub packages for cython-mode.")

(use-package cython-mode
  :init
  (jag--load-cython-mode-requires)
  (jag--add-cython-mode-hooks)
  :ensure t
  :config
  (jag--set-cython-mode-key-bindings)
  (jag--setup-cython-mode-config))

(provide 'init-cython-mode)
;;; init-cython-mode.el ends here