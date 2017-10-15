;;; init-helm-ag.el --- Use silver searcher (ag) with helm
;;; Commentary:

;;; Code:

(defun jag--add-helm-ag-hooks ()
  "Add hooks to helm-ag."
  (jag--add-helm-ag-key-hooks)
  (jag--add-helm-ag-other-hooks))

(defun jag--add-helm-ag-key-hooks ()
  "Add keyboard hooks to helm-ag.")

(defun jag--add-helm-ag-other-hooks ()
  "Add other hooks to helm-ag.")

(defun jag--set-helm-ag-key-bindings ()
  "Set up keybindings for helm-ag.")

(defun jag--setup-helm-ag-config ()
  "Set up personal configuation for helm-ag.")

(defun jag--load-helm-ag-requires ()
  "Load required sub packages for helm-ag.")

(use-package helm-ag
  :init
  (jag--load-helm-ag-requires)
  (jag--add-helm-ag-hooks)
  :ensure t
  :commands
  (helm-ag
   helm-do-ag
   helm-ag-this-file
   helm-do-ag-this-file
   helm-ag-project-root
   helm-do-ag-project-root
   helm-ag-buffers
   helm-do-ag-buffers
   helm-ag-pop-stack
   helm-ag-clear-stack)
  :config
  (jag--set-helm-ag-key-bindings)
  (jag--setup-helm-ag-config))

(provide 'init-helm-ag)
;;; init-helm-ag.el ends here
