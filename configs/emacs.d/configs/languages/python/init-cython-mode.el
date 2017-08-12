;;; init-cython-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-cython-mode-key-bindings ()
  "Set up keybindings for cython-mode.")

(defun jag--setup-cython-mode-config ()
  "Set up personal configuation for cython-mode.")

(defun jag--load-cython-mode-requires ()
  "Load required sub packages for cython-mode.")

(use-package cython-mode
  :ensure t
  :config
  (jag--load-cython-mode-requires)
  (jag--set-cython-mode-key-bindings)
  (jag--setup-cython-mode-config))

(provide 'init-cython-mode)
;;; init-cython-mode.el ends here
