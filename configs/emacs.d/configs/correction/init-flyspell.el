;;; init-flyspell.el --- Adds-spell-check
;;; Commentary:

;;; Code:

(defun jag--set-flyspell-key-bindings ()
  "Set up keybindings for flyspell.")

(defun jag--setup-flyspell-config ()
  "Set up personal configuation for flyspell.")

(defun jag--load-flyspell-requires ()
  "Load required sub packages for flyspell."
  (require 'init-flyspell-correct)
  (require 'init-flyspell-correct-helm))

(use-package flyspell
  :ensure t
  :config
  (jag--load-flyspell-requires)
  (jag--set-flyspell-key-bindings)
  (jag--setup-flyspell-config))

(provide 'init-flyspell)
;;; init-flyspell.el ends here
