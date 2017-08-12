;;; init-live-py-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-live-py-mode-key-bindings ()
  "Set up keybindings for live-py-mode.")

(defun jag--setup-live-py-mode-config ()
  "Set up personal configuation for live-py-mode.")

(defun jag--load-live-py-mode-requires ()
  "Load required sub packages for live-py-mode.")

(use-package live-py-mode
  :ensure t
  :config
  (jag--load-live-py-mode-requires)
  (jag--set-live-py-mode-key-bindings)
  (jag--setup-live-py-mode-config))

(provide 'init-live-py-mode)
;;; init-live-py-mode.el ends here
