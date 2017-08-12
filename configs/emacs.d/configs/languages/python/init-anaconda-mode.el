;;; init-anaconda-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-anaconda-mode-key-bindings ()
  "Set up keybindings for anaconda-mode.")

(defun jag--setup-anaconda-mode-config ()
  "Set up personal configuation for anaconda-mode.")

(defun jag--load-anaconda-mode-requires ()
  "Load required sub packages for anaconda-mode.")

(use-package anaconda-mode
  :ensure t
  :config
  (jag--load-anaconda-mode-requires)
  (jag--set-anaconda-mode-key-bindings)
  (jag--setup-anaconda-mode-config))

(provide 'init-anaconda-mode)
;;; init-anaconda-mode.el ends here
