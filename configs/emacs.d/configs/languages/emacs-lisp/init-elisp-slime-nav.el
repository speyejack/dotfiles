;;; init-elisp-slime-nav.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-elisp-slime-nav-hooks ()
  "Add hooks to elisp-slime-nav."
  (jag--add-elisp-slime-nav-key-hooks)
  (jag--add-elisp-slime-nav-other-hooks))

(defun jag--add-elisp-slime-nav-key-hooks ()
  "Add keyboard hooks to elisp-slime-nav.")

(defun jag--add-elisp-slime-nav-other-hooks ()
  "Add other hooks to elisp-slime-nav.")

(defun jag--set-elisp-slime-nav-key-bindings ()
  "Set up keybindings for elisp-slime-nav.")

(defun jag--setup-elisp-slime-nav-config ()
  "Set up personal configuation for elisp-slime-nav.")

(defun jag--load-elisp-slime-nav-requires ()
  "Load required sub packages for elisp-slime-nav.")

(use-package elisp-slime-nav
  :init
  (jag--load-elisp-slime-nav-requires)
  (jag--add-elisp-slime-nav-hooks)
  :ensure t
  :config
  (jag--set-elisp-slime-nav-key-bindings)
  (jag--setup-elisp-slime-nav-config))

(provide 'init-elisp-slime-nav)
;;; init-elisp-slime-nav.el ends here