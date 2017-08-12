;;; init-lorem-ipsum.el --- Generates-a-bunch-of-non-sense-text
;;; Commentary:

;;; Code:

(defun jag--set-lorem-ipsum-key-bindings ()
  "Set up keybindings for lorem-ipsum.")

(defun jag--setup-lorem-ipsum-config ()
  "Set up personal configuation for lorem-ipsum.")

(defun jag--load-lorem-ipsum-requires ()
  "Load required sub packages for lorem-ipsum.")

(use-package lorem-ipsum
  :ensure t
  :config
  (jag--load-lorem-ipsum-requires)
  (jag--set-lorem-ipsum-key-bindings)
  (jag--setup-lorem-ipsum-config))

(provide 'init-lorem-ipsum)
;;; init-lorem-ipsum.el ends here
