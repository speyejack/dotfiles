;;; init-undo-tree.el --- Vim-undo-tree
;;; Commentary:

;;; Code:

(defun jag--set-undo-tree-key-bindings ()
  "Set up keybindings for undo-tree.")

(defun jag--setup-undo-tree-config ()
  "Set up personal configuation for undo-tree.")

(defun jag--load-undo-tree-requires ()
  "Load required sub packages for undo-tree.")

(use-package undo-tree
  :ensure t
  :config
  (jag--load-undo-tree-requires)
  (jag--set-undo-tree-key-bindings)
  (jag--setup-undo-tree-config))

(provide 'init-undo-tree)
;;; init-undo-tree.el ends here
