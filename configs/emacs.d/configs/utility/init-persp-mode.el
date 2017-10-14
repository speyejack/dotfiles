;;; init-persp-mode.el --- Adds-perspectives-to-emacs
;;; Commentary:

;;; Code:

(defun jag--add-persp-mode-hooks ()
  "Add hooks to persp-mode."
  (jag--add-persp-mode-key-hooks)
  (jag--add-persp-mode-other-hooks))

(defun jag--add-persp-mode-key-hooks ()
  "Add key hooks to persp-mode.")

(defun jag--add-persp-mode-other-hooks ()
  "Add mode other to persp-mode.")

(defun jag--set-persp-mode-key-bindings ()
  "Set up keybindings for persp-mode.")

(defun jag--setup-persp-mode-config ()
  "Set up personal configuation for persp-mode.")

(defun jag--load-persp-mode-requires ()
  "Load required sub packages for persp-mode.")

(use-package persp-mode
  :init
  (jag--load-persp-mode-requires)
  (jag--add-persp-mode-hooks)
  :ensure t
  :config
  (jag--set-persp-mode-key-bindings)
  (jag--setup-persp-mode-config))

(provide 'init-persp-mode)
;;; init-persp-mode.el ends here