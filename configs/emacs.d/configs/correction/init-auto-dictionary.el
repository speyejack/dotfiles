;;; init-auto-dictionary.el --- Mode-that-auto-loads-the-right-dictionary-based-on-text-so-far
;;; Commentary:

;;; Code:

(defun jag--set-auto-dictionary-key-bindings ()
  "Set up keybindings for auto-dictionary.")

(defun jag--setup-auto-dictionary-config ()
  "Set up personal configuation for auto-dictionary.")

(defun jag--load-auto-dictionary-requires ()
  "Load required sub packages for auto-dictionary.")

(use-package auto-dictionary
  :ensure t
  :config
  (jag--load-auto-dictionary-requires)
  (jag--set-auto-dictionary-key-bindings)
  (jag--setup-auto-dictionary-config))

(provide 'init-auto-dictionary)
;;; init-auto-dictionary.el ends here
