;;; init-origami.el --- Text-folding-for-regions
;;; Commentary:

;;; Code:

(defun jag--add-origami-hooks ()
  "Add hooks to origami."
  (jag--add-origami-key-hooks)
  (jag--add-origami-other-hooks))

(defun jag--add-origami-key-hooks ()
  "Add keyboard hooks to origami.")

(defun jag--add-origami-other-hooks ()
  "Add other hooks to origami.")

(defun jag--set-origami-key-bindings ()
  "Set up keybindings for origami.")

(defun jag--setup-origami-config ()
  "Set up personal configuation for origami.")

(defun jag--load-origami-requires ()
  "Load required sub packages for origami.")

(use-package origami
  :init
  (jag--load-origami-requires)
  (jag--add-origami-hooks)
  :ensure t
  :config
  (jag--set-origami-key-bindings)
  (jag--setup-origami-config))

(provide 'init-origami)
;;; init-origami.el ends here