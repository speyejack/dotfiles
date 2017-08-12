;;; init-ws-butler.el --- Delete-excess-whitespace-unobtrusively
;;; Commentary:

;;; Code:

(defun jag--set-ws-butler-key-bindings ()
  "Set up keybindings for ws-butler.")

(defun jag--setup-ws-butler-config ()
  "Set up personal configuation for ws-butler.")

(defun jag--load-ws-butler-requires ()
  "Load required sub packages for ws-butler.")

(use-package ws-butler
  :ensure t
  :config
  (jag--load-ws-butler-requires)
  (jag--set-ws-butler-key-bindings)
  (jag--setup-ws-butler-config))

(provide 'init-ws-butler)
;;; init-ws-butler.el ends here
