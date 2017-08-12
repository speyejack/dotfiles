;;; init-mmm-mode.el --- Allows-for-multiple-major-modes
;;; Commentary:

;;; Code:

(defun jag--set-mmm-mode-key-bindings ()
  "Set up keybindings for mmm-mode.")

(defun jag--setup-mmm-mode-config ()
  "Set up personal configuation for mmm-mode.")

(defun jag--load-mmm-mode-requires ()
  "Load required sub packages for mmm-mode.")

(use-package mmm-mode
  :ensure t
  :config
  (jag--load-mmm-mode-requires)
  (jag--set-mmm-mode-key-bindings)
  (jag--setup-mmm-mode-config))

(provide 'init-mmm-mode)
;;; init-mmm-mode.el ends here
