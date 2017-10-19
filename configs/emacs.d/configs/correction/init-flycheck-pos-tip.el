;;; init-flycheck-pos-tip.el --- Displays-flycheck-error-as-a-tool-tip
;;; Commentary:

;;; Code:

(defun jag--add-flycheck-pos-tip-hooks ()
  "Add hooks to flycheck-pos-tip."
  (jag--add-flycheck-pos-tip-key-hooks)
  (jag--add-flycheck-pos-tip-other-hooks))

(defun jag--add-flycheck-pos-tip-key-hooks ()
  "Add keyboard hooks to flycheck-pos-tip.")

(defun jag--add-flycheck-pos-tip-other-hooks ()
  "Add other hooks to flycheck-pos-tip.")

(defun jag--set-flycheck-pos-tip-key-bindings ()
  "Set up keybindings for flycheck-pos-tip.")

(defun jag--setup-flycheck-pos-tip-config ()
  "Set up personal configuation for flycheck-pos-tip."
	(flycheck-pos-tip-mode))

(defun jag--load-flycheck-pos-tip-requires ()
  "Load required sub packages for flycheck-pos-tip.")

(use-package flycheck-pos-tip
  :init
  (jag--load-flycheck-pos-tip-requires)
  (jag--add-flycheck-pos-tip-hooks)
  :ensure t
  :after flycheck
  :config
  (jag--set-flycheck-pos-tip-key-bindings)
  (jag--setup-flycheck-pos-tip-config))

(provide 'init-flycheck-pos-tip)
;;; init-flycheck-pos-tip.el ends here
