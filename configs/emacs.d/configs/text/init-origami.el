;;; init-origami.el --- Text-folding-for-regions
;;; Commentary:

;;; Code:

(defun jag--set-origami-key-bindings ()
  "Set up keybindings for origami.")

(defun jag--setup-origami-config ()
  "Set up personal configuation for origami.")

(defun jag--load-origami-requires ()
  "Load required sub packages for origami.")

(use-package origami
  :ensure t
  :config
  (jag--load-origami-requires)
  (jag--set-origami-key-bindings)
  (jag--setup-origami-config))

(provide 'init-origami)
;;; init-origami.el ends here
