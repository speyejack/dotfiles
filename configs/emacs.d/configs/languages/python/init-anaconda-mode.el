;;; init-anaconda-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-anaconda-mode-hooks ()
  "Add hooks to anaconda-mode."
  (jag--add-anaconda-mode-key-hooks)
  (jag--add-anaconda-mode-other-hooks))

(defun jag--add-anaconda-mode-key-hooks ()
  "Add key hooks to anaconda-mode.")

(defun jag--add-anaconda-mode-other-hooks ()
  "Add mode other to anaconda-mode.")

(defun jag--set-anaconda-mode-key-bindings ()
  "Set up keybindings for anaconda-mode.")

(defun jag--setup-anaconda-mode-config ()
  "Set up personal configuation for anaconda-mode.")

(defun jag--load-anaconda-mode-requires ()
  "Load required sub packages for anaconda-mode.")

(use-package anaconda-mode
  :init
  (jag--load-anaconda-mode-requires)
  (jag--add-anaconda-mode-hooks)
  :ensure t
  :config
  (jag--set-anaconda-mode-key-bindings)
  (jag--setup-anaconda-mode-config))

(provide 'init-anaconda-mode)
;;; init-anaconda-mode.el ends here