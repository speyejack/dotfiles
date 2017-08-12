;;; init-js2-refactor.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-js2-refactor-key-bindings ()
  "Set up keybindings for js2-refactor.")

(defun jag--setup-js2-refactor-config ()
  "Set up personal configuation for js2-refactor.")

(defun jag--load-js2-refactor-requires ()
  "Load required sub packages for js2-refactor.")

(use-package js2-refactor
  :ensure t
  :config
  (jag--load-js2-refactor-requires)
  (jag--set-js2-refactor-key-bindings)
  (jag--setup-js2-refactor-config))

(provide 'init-js2-refactor)
;;; init-js2-refactor.el ends here
