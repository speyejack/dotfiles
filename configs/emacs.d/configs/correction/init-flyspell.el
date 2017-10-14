;;; init-flyspell.el --- Adds-spell-check
;;; Commentary:

;;; Code:

(defun jag--add-flyspell-hooks ()
  "Add hooks to flyspell."
  (jag--add-flyspell-key-hooks)
  (jag--add-flyspell-other-hooks))

(defun jag--add-flyspell-key-hooks ()
  "Add key hooks to flyspell.")

(defun jag--add-flyspell-other-hooks ()
  "Add mode other to flyspell.")

(defun jag--set-flyspell-key-bindings ()
  "Set up keybindings for flyspell.")

(defun jag--setup-flyspell-config ()
  "Set up personal configuation for flyspell."
  (flyspell-mode 1))

(defun jag--load-flyspell-requires ()
  "Load required sub packages for flyspell."
  (require 'init-flyspell-correct))

(use-package flyspell
  :init
  (jag--load-flyspell-requires)
  (jag--add-flyspell-hooks)
  :ensure t
  :config
  (jag--set-flyspell-key-bindings)
  (jag--setup-flyspell-config))

(provide 'init-flyspell)
;;; init-flyspell.el ends here