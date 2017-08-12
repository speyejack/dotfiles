;;; init-evil-leader.el --- Adds-leader-key-to-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-leader-key-bindings ()
  "Set up keybindings for evil-leader.")

(defun jag--setup-evil-leader-config ()
  "Set up personal configuation for evil-leader.")

(defun jag--load-evil-leader-requires ()
  "Load required sub packages for evil-leader.")

(use-package evil-leader
  :ensure t
  :config
  (jag--load-evil-leader-requires)
  (jag--set-evil-leader-key-bindings)
  (jag--setup-evil-leader-config))

(provide 'init-evil-leader)
;;; init-evil-leader.el ends here
