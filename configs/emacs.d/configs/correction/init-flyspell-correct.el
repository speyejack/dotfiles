;;; init-flyspell-correct.el --- Adds-method-to-correct-spelling
;;; Commentary:

;;; Code:

(defun jag--set-flyspell-correct-key-bindings ()
  "Set up keybindings for flyspell-correct.")

(defun jag--setup-flyspell-correct-config ()
  "Set up personal configuation for flyspell-correct.")

(defun jag--load-flyspell-correct-requires ()
  "Load required sub packages for flyspell-correct.")

(use-package flyspell-correct
  :ensure t
  :config
  (jag--load-flyspell-correct-requires)
  (jag--set-flyspell-correct-key-bindings)
  (jag--setup-flyspell-correct-config))

(provide 'init-flyspell-correct)
;;; init-flyspell-correct.el ends here
