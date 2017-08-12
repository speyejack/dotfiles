;;; init-flyspell-correct-helm.el --- Adds-method-to-correct-spelling-using-helm
;;; Commentary:

;;; Code:

(defun jag--set-flyspell-correct-helm-key-bindings ()
  "Set up keybindings for flyspell-correct-helm.")

(defun jag--setup-flyspell-correct-helm-config ()
  "Set up personal configuation for flyspell-correct-helm.")

(defun jag--load-flyspell-correct-helm-requires ()
  "Load required sub packages for flyspell-correct-helm.")

(use-package flyspell-correct-helm
  :ensure t
  :config
  (jag--load-flyspell-correct-helm-requires)
  (jag--set-flyspell-correct-helm-key-bindings)
  (jag--setup-flyspell-correct-helm-config))

(provide 'init-flyspell-correct-helm)
;;; init-flyspell-correct-helm.el ends here
