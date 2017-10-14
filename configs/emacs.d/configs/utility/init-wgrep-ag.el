;;; init-wgrep-ag.el --- Allows-changes-to-grep-buffer
;;; Commentary:

;;; Code:

(defun jag--add-wgrep-ag-hooks ()
  "Add hooks to wgrep-ag."
  (jag--add-wgrep-ag-key-hooks)
  (jag--add-wgrep-ag-other-hooks))

(defun jag--add-wgrep-ag-key-hooks ()
  "Add key hooks to wgrep-ag.")

(defun jag--add-wgrep-ag-other-hooks ()
  "Add mode other to wgrep-ag.")

(defun jag--set-wgrep-ag-key-bindings ()
  "Set up keybindings for wgrep-ag.")

(defun jag--setup-wgrep-ag-config ()
  "Set up personal configuation for wgrep-ag.")

(defun jag--load-wgrep-ag-requires ()
  "Load required sub packages for wgrep-ag.")

(use-package wgrep-ag
  :init
  (jag--load-wgrep-ag-requires)
  (jag--add-wgrep-ag-hooks)
  :ensure t
  :config
  (jag--set-wgrep-ag-key-bindings)
  (jag--setup-wgrep-ag-config))

(provide 'init-wgrep-ag)
;;; init-wgrep-ag.el ends here