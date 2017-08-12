;;; init-elisp-slime-nav.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-elisp-slime-nav-key-bindings ()
  "Set up keybindings for elisp-slime-nav.")

(defun jag--setup-elisp-slime-nav-config ()
  "Set up personal configuation for elisp-slime-nav.")

(defun jag--load-elisp-slime-nav-requires ()
  "Load required sub packages for elisp-slime-nav.")

(use-package elisp-slime-nav
  :ensure t
  :config
  (jag--load-elisp-slime-nav-requires)
  (jag--set-elisp-slime-nav-key-bindings)
  (jag--setup-elisp-slime-nav-config))

(provide 'init-elisp-slime-nav)
;;; init-elisp-slime-nav.el ends here
