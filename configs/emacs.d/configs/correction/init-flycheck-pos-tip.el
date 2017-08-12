;;; init-flycheck-pos-tip.el --- Displays-flycheck-error-as-a-tool-tip
;;; Commentary:

;;; Code:

(defun jag--set-flycheck-pos-tip-key-bindings ()
  "Set up keybindings for flycheck-pos-tip.")

(defun jag--setup-flycheck-pos-tip-config ()
  "Set up personal configuation for flycheck-pos-tip."
	(flycheck-pos-tip-mode))

(defun jag--load-flycheck-pos-tip-requires ()
  "Load required sub packages for flycheck-pos-tip.")

(use-package flycheck-pos-tip
  :ensure t
  :config
  (jag--load-flycheck-pos-tip-requires)
  (jag--set-flycheck-pos-tip-key-bindings)
  (jag--setup-flycheck-pos-tip-config))

(provide 'init-flycheck-pos-tip)
;;; init-flycheck-pos-tip.el ends here
