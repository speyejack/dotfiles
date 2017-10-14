;;; init-macrostep.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-macrostep-hooks ()
  "Add hooks to macrostep."
  (jag--add-macrostep-key-hooks)
  (jag--add-macrostep-other-hooks))

(defun jag--add-macrostep-key-hooks ()
  "Add keyboard hooks to macrostep.")

(defun jag--add-macrostep-other-hooks ()
  "Add other hooks to macrostep.")

(defun jag--set-macrostep-key-bindings ()
  "Set up keybindings for macrostep.")

(defun jag--setup-macrostep-config ()
  "Set up personal configuation for macrostep.")

(defun jag--load-macrostep-requires ()
  "Load required sub packages for macrostep.")

(use-package macrostep
  :init
  (jag--load-macrostep-requires)
  (jag--add-macrostep-hooks)
  :ensure t
  :config
  (jag--set-macrostep-key-bindings)
  (jag--setup-macrostep-config))

(provide 'init-macrostep)
;;; init-macrostep.el ends here