;;; init-wgrep-ag.el --- Allows-changes-to-grep-buffer
;;; Commentary:

;;; Code:

(defun jag--set-wgrep-ag-key-bindings ()
  "Set up keybindings for wgrep-ag.")

(defun jag--setup-wgrep-ag-config ()
  "Set up personal configuation for wgrep-ag.")

(defun jag--load-wgrep-ag-requires ()
  "Load required sub packages for wgrep-ag.")

(use-package wgrep-ag
  :ensure t
  :config
  (jag--load-wgrep-ag-requires)
  (jag--set-wgrep-ag-key-bindings)
  (jag--setup-wgrep-ag-config))

(provide 'init-wgrep-ag)
;;; init-wgrep-ag.el ends here
