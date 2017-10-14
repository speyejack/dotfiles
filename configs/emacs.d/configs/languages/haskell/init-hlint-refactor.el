;;; init-hlint-refactor.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-hlint-refactor-hooks ()
  "Add hooks to hlint-refactor."
  (jag--add-hlint-refactor-key-hooks)
  (jag--add-hlint-refactor-other-hooks))

(defun jag--add-hlint-refactor-key-hooks ()
  "Add key hooks to hlint-refactor.")

(defun jag--add-hlint-refactor-other-hooks ()
  "Add mode other to hlint-refactor.")

(defun jag--set-hlint-refactor-key-bindings ()
  "Set up keybindings for hlint-refactor.")

(defun jag--setup-hlint-refactor-config ()
  "Set up personal configuation for hlint-refactor.")

(defun jag--load-hlint-refactor-requires ()
  "Load required sub packages for hlint-refactor.")

(use-package hlint-refactor
  :init
  (jag--load-hlint-refactor-requires)
  (jag--add-hlint-refactor-hooks)
  :ensure t
  :config
  (jag--set-hlint-refactor-key-bindings)
  (jag--setup-hlint-refactor-config))

(provide 'init-hlint-refactor)
;;; init-hlint-refactor.el ends here