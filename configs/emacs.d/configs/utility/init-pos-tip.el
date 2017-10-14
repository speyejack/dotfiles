;;; init-pos-tip.el --- Tool-Tip-library
;;; Commentary:

;;; Code:

(defun jag--add-pos-tip-hooks ()
  "Add hooks to pos-tip."
  (jag--add-pos-tip-key-hooks)
  (jag--add-pos-tip-other-hooks))

(defun jag--add-pos-tip-key-hooks ()
  "Add keyboard hooks to pos-tip.")

(defun jag--add-pos-tip-other-hooks ()
  "Add other hooks to pos-tip.")

(defun jag--set-pos-tip-key-bindings ()
  "Set up keybindings for pos-tip.")

(defun jag--setup-pos-tip-config ()
  "Set up personal configuation for pos-tip.")

(defun jag--load-pos-tip-requires ()
  "Load required sub packages for pos-tip.")

(use-package pos-tip
  :init
  (jag--load-pos-tip-requires)
  (jag--add-pos-tip-hooks)
  :ensure t
  :config
  (jag--set-pos-tip-key-bindings)
  (jag--setup-pos-tip-config))

(provide 'init-pos-tip)
;;; init-pos-tip.el ends here