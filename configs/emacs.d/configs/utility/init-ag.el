;;; init-ag.el --- Interfaces-with-ag, which-is-better-file-searching-than-ack
;;; Commentary:

;;; Code:

(defun jag--set-ag-key-bindings ()
  "Set up keybindings for ag.")

(defun jag--setup-ag-config ()
  "Set up personal configuation for ag.")

(defun jag--load-ag-requires ()
  "Load required sub packages for ag.")

(use-package ag
  :ensure t
  :config
  (jag--load-ag-requires)
  (jag--set-ag-key-bindings)
  (jag--setup-ag-config))

(provide 'init-ag)
;;; init-ag.el ends here
