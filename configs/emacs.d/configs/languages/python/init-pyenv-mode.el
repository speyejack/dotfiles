;;; init-pyenv-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-pyenv-mode-key-bindings ()
  "Set up keybindings for pyenv-mode.")

(defun jag--setup-pyenv-mode-config ()
  "Set up personal configuation for pyenv-mode.")

(defun jag--load-pyenv-mode-requires ()
  "Load required sub packages for pyenv-mode.")

(use-package pyenv-mode
  :ensure t
  :config
  (jag--load-pyenv-mode-requires)
  (jag--set-pyenv-mode-key-bindings)
  (jag--setup-pyenv-mode-config))

(provide 'init-pyenv-mode)
;;; init-pyenv-mode.el ends here
