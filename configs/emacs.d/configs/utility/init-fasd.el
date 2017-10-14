;;; init-fasd.el --- Commandline-productivity-booster, creates-easy-access-to-directories-already-visited
;;; Commentary:

;;; Code:

(defun jag--add-fasd-hooks ()
  "Add hooks to fasd."
  (jag--add-fasd-key-hooks)
  (jag--add-fasd-other-hooks))

(defun jag--add-fasd-key-hooks ()
  "Add key hooks to fasd.")

(defun jag--add-fasd-other-hooks ()
  "Add mode other to fasd.")

(defun jag--set-fasd-key-bindings ()
  "Set up keybindings for fasd.")

(defun jag--setup-fasd-config ()
  "Set up personal configuation for fasd.")

(defun jag--load-fasd-requires ()
  "Load required sub packages for fasd.")

(use-package fasd
  :init
  (jag--load-fasd-requires)
  (jag--add-fasd-hooks)
  :ensure t
  :config
  (jag--set-fasd-key-bindings)
  (jag--setup-fasd-config))

(provide 'init-fasd)
;;; init-fasd.el ends here