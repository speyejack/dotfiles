;;; init-ws-butler.el --- Delete-excess-whitespace-unobtrusively
;;; Commentary:

;;; Code:

(defun jag--add-ws-butler-hooks ()
  "Add hooks to ws-butler."
  (jag--add-ws-butler-key-hooks)
  (jag--add-ws-butler-other-hooks))

(defun jag--add-ws-butler-key-hooks ()
  "Add keyboard hooks to ws-butler.")

(defun jag--add-ws-butler-other-hooks ()
  "Add other hooks to ws-butler.")

(defun jag--set-ws-butler-key-bindings ()
  "Set up keybindings for ws-butler.")

(defun jag--setup-ws-butler-config ()
  "Set up personal configuation for ws-butler."
  (ws-butler-global-mode 1))

(defun jag--load-ws-butler-requires ()
  "Load required sub packages for ws-butler.")

(use-package ws-butler
  :init
  (jag--load-ws-butler-requires)
  (jag--add-ws-butler-hooks)
  :ensure t
  :config
  (jag--set-ws-butler-key-bindings)
  (jag--setup-ws-butler-config))

(provide 'init-ws-butler)
;;; init-ws-butler.el ends here