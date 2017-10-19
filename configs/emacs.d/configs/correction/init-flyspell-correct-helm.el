;;; init-flyspell-correct-helm.el --- Adds-method-to-correct-spelling-using-helm
;;; Commentary:

;;; Code:

(defun jag--add-flyspell-correct-helm-hooks ()
  "Add hooks to flyspell-correct-helm."
  (jag--add-flyspell-correct-helm-key-hooks)
  (jag--add-flyspell-correct-helm-other-hooks))

(defun jag--add-flyspell-correct-helm-key-hooks ()
  "Add keyboard hooks to flyspell-correct-helm.")

(defun jag--add-flyspell-correct-helm-other-hooks ()
  "Add other hooks to flyspell-correct-helm.")

(defun jag--set-flyspell-correct-helm-key-bindings ()
  "Set up keybindings for flyspell-correct-helm.")

(defun jag--setup-flyspell-correct-helm-config ()
  "Set up personal configuation for flyspell-correct-helm.")

(defun jag--load-flyspell-correct-helm-requires ()
  "Load required sub packages for flyspell-correct-helm.")

(use-package flyspell-correct-helm
  :init
  (jag--load-flyspell-correct-helm-requires)
  (jag--add-flyspell-correct-helm-hooks)
  :ensure t
  :after flyspell-correct
  :config
  (jag--set-flyspell-correct-helm-key-bindings)
  (jag--setup-flyspell-correct-helm-config))

(provide 'init-flyspell-correct-helm)
;;; init-flyspell-correct-helm.el ends here
