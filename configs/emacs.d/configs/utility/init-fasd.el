;;; init-fasd.el --- Commandline-productivity-booster, creates-easy-access-to-directories-already-visited
;;; Commentary:

;;; Code:

(defun jag--set-fasd-key-bindings ()
  "Set up keybindings for fasd.")

(defun jag--setup-fasd-config ()
  "Set up personal configuation for fasd.")

(defun jag--load-fasd-requires ()
  "Load required sub packages for fasd.")

(use-package fasd
  :ensure t
  :config
  (jag--load-fasd-requires)
  (jag--set-fasd-key-bindings)
  (jag--setup-fasd-config))

(provide 'init-fasd)
;;; init-fasd.el ends here
