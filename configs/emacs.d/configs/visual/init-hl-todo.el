;;; init-hl-todo.el --- Highlights-Todo-statements-and-allows-jumping-to-them
;;; Commentary:

;;; Code:

(defun jag--add-hl-todo-hooks ()
  "Add hooks to hl-todo."
  (jag--add-hl-todo-key-hooks)
  (jag--add-hl-todo-other-hooks))

(defun jag--add-hl-todo-key-hooks ()
  "Add keyboard hooks to hl-todo.")

(defun jag--add-hl-todo-other-hooks ()
  "Add other hooks to hl-todo.")

(defun jag--set-hl-todo-key-bindings ()
  "Set up keybindings for hl-todo.")

(defun jag--setup-hl-todo-config ()
  "Set up personal configuation for hl-todo."
  (add-hook 'prog-mode-hook 'hl-todo-mode))

(defun jag--load-hl-todo-requires ()
  "Load required sub packages for hl-todo.")

(use-package hl-todo
  :init
  (jag--load-hl-todo-requires)
  (jag--add-hl-todo-hooks)
  :ensure t
  :config
  (jag--set-hl-todo-key-bindings)
  (jag--setup-hl-todo-config))

(provide 'init-hl-todo)
;;; init-hl-todo.el ends here