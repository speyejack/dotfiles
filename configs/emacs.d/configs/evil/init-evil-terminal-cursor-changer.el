;;; init-evil-terminal-cursor-changer.el --- Allows-the-cursor-to-change-in-terminal-with-evil
;;; Commentary:

;;; Code:

(defun jag--set-evil-terminal-cursor-changer-key-bindings ()
  "Set up keybindings for evil-terminal-cursor-changer.")

(defun jag--setup-evil-terminal-cursor-changer-config ()
  "Set up personal configuation for evil-terminal-cursor-changer.")

(defun jag--load-evil-terminal-cursor-changer-requires ()
  "Load required sub packages for evil-terminal-cursor-changer.")

(use-package evil-terminal-cursor-changer
  :ensure t
  :config
  (jag--load-evil-terminal-cursor-changer-requires)
  (jag--set-evil-terminal-cursor-changer-key-bindings)
  (jag--setup-evil-terminal-cursor-changer-config))

(provide 'init-evil-terminal-cursor-changer)
;;; init-evil-terminal-cursor-changer.el ends here
