;;; init-hlint-refactor.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-hlint-refactor-key-bindings ()
  "Set up keybindings for hlint-refactor.")

(defun jag--setup-hlint-refactor-config ()
  "Set up personal configuation for hlint-refactor.")

(defun jag--load-hlint-refactor-requires ()
  "Load required sub packages for hlint-refactor.")

(use-package hlint-refactor
  :ensure t
  :config
  (jag--load-hlint-refactor-requires)
  (jag--set-hlint-refactor-key-bindings)
  (jag--setup-hlint-refactor-config))

(provide 'init-hlint-refactor)
;;; init-hlint-refactor.el ends here
