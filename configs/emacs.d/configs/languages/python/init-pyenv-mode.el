;;; init-pyenv-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-pyenv-mode-hooks ()
  "Add hooks to pyenv-mode."
  (jag--add-pyenv-mode-key-hooks)
  (jag--add-pyenv-mode-other-hooks))

(defun jag--add-pyenv-mode-key-hooks ()
  "Add key hooks to pyenv-mode.")

(defun jag--add-pyenv-mode-other-hooks ()
  "Add mode other to pyenv-mode.")

(defun jag--set-pyenv-mode-key-bindings ()
  "Set up keybindings for pyenv-mode.")

(defun jag--setup-pyenv-mode-config ()
  "Set up personal configuation for pyenv-mode.")

(defun jag--load-pyenv-mode-requires ()
  "Load required sub packages for pyenv-mode.")

(use-package pyenv-mode
  :init
  (jag--load-pyenv-mode-requires)
  (jag--add-pyenv-mode-hooks)
  :ensure t
  :config
  (jag--set-pyenv-mode-key-bindings)
  (jag--setup-pyenv-mode-config))

(provide 'init-pyenv-mode)
;;; init-pyenv-mode.el ends here