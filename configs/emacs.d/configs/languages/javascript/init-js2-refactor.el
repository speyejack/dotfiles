;;; init-js2-refactor.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-js2-refactor-hooks ()
  "Add hooks to js2-refactor."
  (jag--add-js2-refactor-key-hooks)
  (jag--add-js2-refactor-other-hooks))

(defun jag--add-js2-refactor-key-hooks ()
  "Add keyboard hooks to js2-refactor.")

(defun jag--add-js2-refactor-other-hooks ()
  "Add other hooks to js2-refactor.")

(defun jag--set-js2-refactor-key-bindings ()
  "Set up keybindings for js2-refactor.")

(defun jag--setup-js2-refactor-config ()
  "Set up personal configuation for js2-refactor.")

(defun jag--load-js2-refactor-requires ()
  "Load required sub packages for js2-refactor.")

(use-package js2-refactor
  :init
  (jag--load-js2-refactor-requires)
  (jag--add-js2-refactor-hooks)
  :ensure t
  :config
  (jag--set-js2-refactor-key-bindings)
  (jag--setup-js2-refactor-config))

(provide 'init-js2-refactor)
;;; init-js2-refactor.el ends here