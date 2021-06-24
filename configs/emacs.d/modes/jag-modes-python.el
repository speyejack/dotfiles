;;; jag-modes-python.el ---

;;; Commentary:

;;; Code:

;; python
;;
;; Python mode
;;
;; Source: https://www.emacswiki.org/emacs/PythonProgrammingInEmacs

(with-eval-after-load 'python-mode
  (require 'lsp-python-ms)
  (require 'dap-python))

(add-hook 'python-mode-hook
          (lambda ()
            ;; (setq indent-tabs-mode t)
			(lsp)
            (setq tab-width (default-value 'tab-width))
			(setq python-indent-offset 4)
			(setq dap-python-debugger 'debugpy)
			(setq dap-python-executable "python3")))

(jag-declare-prefix-for-mode 'python-mode "t" "pytest")
(jag-declare-prefix-for-mode 'python-mode "tp" "pytest-pdb")
(jag-define-leader-keys-for-major-mode
 'python-mode
 "l" 'live-py-mode
 "h" 'helm-pydoc
 "p" 'run-python
 "f" 'python-shell-send-file
 "b" 'python-shell-send-buffer
 "r" 'python-shell-send-region
 "s" 'python-shell-send-string
 "o" 'python-shell-switch-to-shell
 "d" 'pdb

 "ta" 'pytest-all
 "td" 'pytest-directory
 "tm" 'pytest-module
 "to" 'pytest-one
 "tpa" 'pytest-pdb-all
 "tpm" 'pytest-pdb-module
 "tpo" 'pytest-pdb-one
 "=" 'yapf-mode
 )


(use-package jag-funcs-python
  :straight nil
  :defer t
  :init
  (setq python-shell-interpreter "python3"))

;; anaconda-mode
;;
;; Code navigation, documentation lookup and completion for Python
;;
;; Source: https://github.com/proofit404/anaconda-mode

(use-package anaconda-mode
  :disabled t
  :diminish)

;; company-anaconda
;;
;; Anaconda backend for company-mode
;;
;; Source: https://github.com/proofit404/company-anaconda

(use-package company-anaconda
  :disabled t
  :diminish)

;; cython-mode
;;
;; Major mode for editing Cython files
;;
;; Source: https://github.com/cython/cython

(use-package cython-mode
  :disabled t
  :diminish)

;; elpy
;;
;; Emacs Python Development Environment
;;
;; Source: https://github.com/jorgenschaefer/elpy

(use-package elpy
  :disabled t
  :diminish
  :config
  (setq elpy-modules (remove 'elpy-module-highlight-indentation elpy-modules))
  (add-hook 'python-mode-hook 'elpy-mode))

;; helm-pydoc
;;
;; pydoc with helm interface
;;
;; Source: https://github.com/syohex/emacs-helm-pydoc

(use-package helm-pydoc
  :commands 'helm-pydoc
  :diminish)

;; hy-mode
;;
;; Major mode for Hylang
;;
;; Source: https://github.com/hylang/hy-mode

(use-package hy-mode
  :disabled t
  :diminish)

;; live-py-mode
;;
;; Live Coding in Python
;;
;; Source: https://github.com/donkirkby/live-py-plugin

(use-package live-py-mode
  :commands 'live-py-mode
  :diminish)

;; nose
;;
;; Easy Python test running in Emacs
;;
;; Source: https://bitbucket.com/durin42/nosemacs

(use-package nose
  :disabled t
  :diminish)

;; py-isort
;;
;; Use isort to sort the imports in a Python buffer
;;
;; Source: https://github.com/paetzke/py-isort.el

(use-package py-isort
  :disabled t
  :diminish)

;; pyenv-mode
;;
;; Integrate pyenv with python-mode
;;
;; Source: https://github.com/proofit404/pyenv-mode

(use-package pyenv-mode
  :disabled t
  :diminish)

;; pyvenv
;;
;; Python virtual environment interface
;;
;; Source: https://github.com/jorgenschaefer/pyvenv

(use-package pyvenv
  :diminish
  :config
  (pyvenv-mode 1))

;; pytest
;;
;; Easy Python test running in Emacs
;;
;; Source: https://github.com/ionrock/pytest-el

(use-package pytest
  :commands (pytest-all pytest-module pytest-one pytest-pdb-all
						pytest-pdb-module pytest-pdb-one)
  :diminish
  :config
  (setq pytest-global-name "pytest-3"))

;; yapfify
;;
;; (automatically) format python buffers using YAPF.
;;
;; Source: https://github.com/JorisE/yapfify

(use-package yapfify
  :disabled t
  :hook (python-mode . yapf-mode)
  :diminish yapf-mode)

;; virtualenvwrapper
;;
;; a featureful virtualenv tool for Emacs
;;
;; Source: https://github.com/porterjamesj/virtualenvwrapper.el

(use-package virtualenvwrapper
  :disabled t
  :diminish)


(provide 'jag-modes-python)
;;; jag-modes-python.el ends here
