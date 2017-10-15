;;; init-ag.el --- Interfaces-with-ag, which-is-better-file-searching-than-ack
;;; Commentary:

;;; Code:

(defun jag--add-ag-hooks ()
  "Add hooks to ag."
  (jag--add-ag-key-hooks)
  (jag--add-ag-other-hooks))

(defun jag--add-ag-key-hooks ()
  "Add keyboard hooks to ag.")

(defun jag--add-ag-other-hooks ()
  "Add other hooks to ag.")

(defun jag--set-ag-key-bindings ()
  "Set up keybindings for ag.")

(defun jag--setup-ag-config ()
  "Set up personal configuation for ag.")

(defun jag--load-ag-requires ()
  "Load required sub packages for ag.")

(use-package ag
  :init
  (jag--load-ag-requires)
  (jag--add-ag-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-ag-key-bindings)
  (jag--setup-ag-config))

(provide 'init-ag)
;;; init-ag.el ends here
