;;; init-xkcd.el --- XKCD-Browser-in-emacs
;;; Commentary:

;;; Code:

(defun jag--add-xkcd-hooks ()
  "Add hooks to xkcd."
  (jag--add-xkcd-key-hooks)
  (jag--add-xkcd-other-hooks))

(defun jag--add-xkcd-key-hooks ()
  "Add keyboard hooks to xkcd.")

(defun jag--add-xkcd-other-hooks ()
  "Add other hooks to xkcd.")

(defun jag--set-xkcd-key-bindings ()
  "Set up keybindings for xkcd.")

(defun jag--setup-xkcd-config ()
  "Set up personal configuation for xkcd.")

(defun jag--load-xkcd-requires ()
  "Load required sub packages for xkcd.")

(use-package xkcd
  :init
  (jag--load-xkcd-requires)
  (jag--add-xkcd-hooks)
  :ensure t
  :config
  (jag--set-xkcd-key-bindings)
  (jag--setup-xkcd-config))

(provide 'init-xkcd)
;;; init-xkcd.el ends here