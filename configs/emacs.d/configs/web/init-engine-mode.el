;;; init-engine-mode.el --- Allows-for-searching-of-search-engines
;;; Commentary:

;;; Code:

(defun jag--set-engine-mode-key-bindings ()
  "Set up keybindings for engine-mode.")

(defun jag--setup-engine-mode-config ()
  "Set up personal configuation for engine-mode.")

(defun jag--load-engine-mode-requires ()
  "Load required sub packages for engine-mode.")

(use-package engine-mode
  :ensure t
  :config
  (jag--load-engine-mode-requires)
  (jag--set-engine-mode-key-bindings)
  (jag--setup-engine-mode-config))

(provide 'init-engine-mode)
;;; init-engine-mode.el ends here
