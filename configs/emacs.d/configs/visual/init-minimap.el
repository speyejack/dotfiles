;;; init-minimap.el --- Adds-a-sidebar-map-of-current-buffer
;;; Commentary:

;;; Code:

(defun jag--add-minimap-hooks ()
  "Add hooks to minimap."
  (jag--add-minimap-key-hooks)
  (jag--add-minimap-other-hooks))

(defun jag--add-minimap-key-hooks ()
  "Add keyboard hooks to minimap."
  (add-hook 'prog-mode-hook 'minimap-mode))

(defun jag--add-minimap-other-hooks ()
  "Add other hooks to minimap.")

(defun jag--set-minimap-key-bindings ()
  "Set up keybindings for minimap.")

(defun jag--setup-minimap-config ()
  "Set up personal configuation for minimap."
  (setq minimap-width-fraction 0.10)
  (setq minimap-minimum-width 15)
  (setq minimap-window-location 'right))

(defun jag--load-minimap-requires ()
  "Load required sub packages for minimap.")

(use-package minimap
  :init
  (jag--load-minimap-requires)
  (jag--add-minimap-hooks)
  :ensure t
  :diminish minimap-mode
  :commands 'minimap-mode
  :config
  (jag--set-minimap-key-bindings)
  (jag--setup-minimap-config))

(provide 'init-minimap)
;;; init-minimap.el ends here
