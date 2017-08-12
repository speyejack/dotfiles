;;; init-macrostep.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-macrostep-key-bindings ()
  "Set up keybindings for macrostep.")

(defun jag--setup-macrostep-config ()
  "Set up personal configuation for macrostep.")

(defun jag--load-macrostep-requires ()
  "Load required sub packages for macrostep.")

(use-package macrostep
  :ensure t
  :config
  (jag--load-macrostep-requires)
  (jag--set-macrostep-key-bindings)
  (jag--setup-macrostep-config))

(provide 'init-macrostep)
;;; init-macrostep.el ends here
