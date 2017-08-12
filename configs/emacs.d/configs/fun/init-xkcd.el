;;; init-xkcd.el --- XKCD-Browser-in-emacs
;;; Commentary:

;;; Code:

(defun jag--set-xkcd-key-bindings ()
  "Set up keybindings for xkcd.")

(defun jag--setup-xkcd-config ()
  "Set up personal configuation for xkcd.")

(defun jag--load-xkcd-requires ()
  "Load required sub packages for xkcd.")

(use-package xkcd
  :ensure t
  :config
  (jag--load-xkcd-requires)
  (jag--set-xkcd-key-bindings)
  (jag--setup-xkcd-config))

(provide 'init-xkcd)
;;; init-xkcd.el ends here
