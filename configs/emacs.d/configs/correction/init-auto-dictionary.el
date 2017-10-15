;;; init-auto-dictionary.el --- Mode-that-auto-loads-the-right-dictionary-based-on-text-so-far
;;; Commentary:

;;; Code:

(defun jag--add-auto-dictionary-hooks ()
  "Add hooks to auto-dictionary."
  (jag--add-auto-dictionary-key-hooks)
  (jag--add-auto-dictionary-other-hooks))

(defun jag--add-auto-dictionary-key-hooks ()
  "Add keyboard hooks to auto-dictionary.")

(defun jag--add-auto-dictionary-other-hooks ()
  "Add other hooks to auto-dictionary.")

(defun jag--set-auto-dictionary-key-bindings ()
  "Set up keybindings for auto-dictionary.")

(defun jag--setup-auto-dictionary-config ()
  "Set up personal configuation for auto-dictionary.")

(defun jag--load-auto-dictionary-requires ()
  "Load required sub packages for auto-dictionary.")

(use-package auto-dictionary
  :init
  (jag--load-auto-dictionary-requires)
  (jag--add-auto-dictionary-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-auto-dictionary-key-bindings)
  (jag--setup-auto-dictionary-config))

(provide 'init-auto-dictionary)
;;; init-auto-dictionary.el ends here
