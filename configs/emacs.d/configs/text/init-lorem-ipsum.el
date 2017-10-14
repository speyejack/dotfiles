;;; init-lorem-ipsum.el --- Generates-a-bunch-of-non-sense-text
;;; Commentary:

;;; Code:

(defun jag--add-lorem-ipsum-hooks ()
  "Add hooks to lorem-ipsum."
  (jag--add-lorem-ipsum-key-hooks)
  (jag--add-lorem-ipsum-other-hooks))

(defun jag--add-lorem-ipsum-key-hooks ()
  "Add key hooks to lorem-ipsum.")

(defun jag--add-lorem-ipsum-other-hooks ()
  "Add mode other to lorem-ipsum.")

(defun jag--set-lorem-ipsum-key-bindings ()
  "Set up keybindings for lorem-ipsum.")

(defun jag--setup-lorem-ipsum-config ()
  "Set up personal configuation for lorem-ipsum.")

(defun jag--load-lorem-ipsum-requires ()
  "Load required sub packages for lorem-ipsum.")

(use-package lorem-ipsum
  :init
  (jag--load-lorem-ipsum-requires)
  (jag--add-lorem-ipsum-hooks)
  :ensure t
  :config
  (jag--set-lorem-ipsum-key-bindings)
  (jag--setup-lorem-ipsum-config))

(provide 'init-lorem-ipsum)
;;; init-lorem-ipsum.el ends here