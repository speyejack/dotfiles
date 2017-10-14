;;; init-js2-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-js2-mode-hooks ()
  "Add hooks to js2-mode."
  (jag--add-js2-mode-key-hooks)
  (jag--add-js2-mode-other-hooks))

(defun jag--add-js2-mode-key-hooks ()
  "Add keyboard hooks to js2-mode.")

(defun jag--add-js2-mode-other-hooks ()
  "Add other hooks to js2-mode.")

(defun jag--set-js2-mode-key-bindings ()
  "Set up keybindings for js2-mode.")

(defun jag--setup-js2-mode-config ()
  "Set up personal configuation for js2-mode.")

(defun jag--load-js2-mode-requires ()
  "Load required sub packages for js2-mode.")

(use-package js2-mode
  :init
  (jag--load-js2-mode-requires)
  (jag--add-js2-mode-hooks)
  :ensure t
  :config
  (jag--set-js2-mode-key-bindings)
  (jag--setup-js2-mode-config))

(provide 'init-js2-mode)
;;; init-js2-mode.el ends here