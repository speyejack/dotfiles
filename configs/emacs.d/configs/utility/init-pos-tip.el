;;; init-pos-tip.el --- Tool-Tip-library
;;; Commentary:

;;; Code:

(defun jag--set-pos-tip-key-bindings ()
  "Set up keybindings for pos-tip.")

(defun jag--setup-pos-tip-config ()
  "Set up personal configuation for pos-tip.")

(defun jag--load-pos-tip-requires ()
  "Load required sub packages for pos-tip.")

(use-package pos-tip
  :ensure t
  :config
  (jag--load-pos-tip-requires)
  (jag--set-pos-tip-key-bindings)
  (jag--setup-pos-tip-config))

(provide 'init-pos-tip)
;;; init-pos-tip.el ends here
