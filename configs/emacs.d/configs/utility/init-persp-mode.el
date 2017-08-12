;;; init-persp-mode.el --- Adds-perspectives-to-emacs
;;; Commentary:

;;; Code:

(defun jag--set-persp-mode-key-bindings ()
  "Set up keybindings for persp-mode.")

(defun jag--setup-persp-mode-config ()
  "Set up personal configuation for persp-mode.")

(defun jag--load-persp-mode-requires ()
  "Load required sub packages for persp-mode.")

(use-package persp-mode
  :ensure t
  :config
  (jag--load-persp-mode-requires)
  (jag--set-persp-mode-key-bindings)
  (jag--setup-persp-mode-config))

(provide 'init-persp-mode)
;;; init-persp-mode.el ends here
