;;; init-mmm-mode.el --- Allows-for-multiple-major-modes
;;; Commentary:

;;; Code:

(defun jag--add-mmm-mode-hooks ()
  "Add hooks to mmm-mode."
  (jag--add-mmm-mode-key-hooks)
  (jag--add-mmm-mode-other-hooks))

(defun jag--add-mmm-mode-key-hooks ()
  "Add keyboard hooks to mmm-mode.")

(defun jag--add-mmm-mode-other-hooks ()
  "Add other hooks to mmm-mode.")

(defun jag--set-mmm-mode-key-bindings ()
  "Set up keybindings for mmm-mode.")

(defun jag--setup-mmm-mode-config ()
  "Set up personal configuation for mmm-mode.")

(defun jag--load-mmm-mode-requires ()
  "Load required sub packages for mmm-mode.")

(use-package mmm-mode
  :init
  (jag--load-mmm-mode-requires)
  (jag--add-mmm-mode-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-mmm-mode-key-bindings)
  (jag--setup-mmm-mode-config))

(provide 'init-mmm-mode)
;;; init-mmm-mode.el ends here
