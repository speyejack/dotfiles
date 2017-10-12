;;; init-hl-todo.el --- Highlights-Todo-statements-and-allows-jumping-to-them
;;; Commentary:

;;; Code:

(defun jag--set-hl-todo-key-bindings ()
  "Set up keybindings for hl-todo.")

(defun jag--setup-hl-todo-config ()
  "Set up personal configuation for hl-todo."
  (add-hook 'prog-mode-hook 'hl-todo-mode))

(defun jag--load-hl-todo-requires ()
  "Load required sub packages for hl-todo.")

(use-package hl-todo
  :ensure t
  :config
  (jag--load-hl-todo-requires)
  (jag--set-hl-todo-key-bindings)
  (jag--setup-hl-todo-config))

(provide 'init-hl-todo)
;;; init-hl-todo.el ends here
