;;; init-undo-tree.el --- Vim-undo-tree
;;; Commentary:

;;; Code:

(defun jag--add-undo-tree-hooks ()
  "Add hooks to undo-tree."
  (jag--add-undo-tree-key-hooks)
  (jag--add-undo-tree-other-hooks))

(defun jag--add-undo-tree-key-hooks ()
  "Add keyboard hooks to undo-tree.")

(defun jag--add-undo-tree-other-hooks ()
  "Add other hooks to undo-tree.")

(defun jag--set-undo-tree-key-bindings ()
  "Set up keybindings for undo-tree.")

(defun jag--setup-undo-tree-config ()
  "Set up personal configuation for undo-tree.")

(defun jag--load-undo-tree-requires ()
  "Load required sub packages for undo-tree.")

(use-package undo-tree
  :init
  (jag--load-undo-tree-requires)
  (jag--add-undo-tree-hooks)
  :ensure t
  :diminish 'undo-tree-mode
  :config
  (jag--set-undo-tree-key-bindings)
  (jag--setup-undo-tree-config))

(provide 'init-undo-tree)
;;; init-undo-tree.el ends here