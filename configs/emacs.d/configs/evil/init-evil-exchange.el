;;; init-evil-exchange.el --- Easily-exchange-two-words
;;; Commentary:

;;; Code:

(defun jag--add-evil-exchange-hooks ()
  "Add hooks to evil-exchange."
  (jag--add-evil-exchange-key-hooks)
  (jag--add-evil-exchange-other-hooks))

(defun jag--add-evil-exchange-key-hooks ()
  "Add key hooks to evil-exchange.")

(defun jag--add-evil-exchange-other-hooks ()
  "Add mode other to evil-exchange.")

(defun jag--set-evil-exchange-key-bindings ()
  "Set up keybindings for evil-exchange.")

(defun jag--setup-evil-exchange-config ()
  "Set up personal configuation for evil-exchange.")

(defun jag--load-evil-exchange-requires ()
  "Load required sub packages for evil-exchange.")

(use-package evil-exchange
  :init
  (jag--load-evil-exchange-requires)
  (jag--add-evil-exchange-hooks)
  :ensure t
  :config
  (jag--set-evil-exchange-key-bindings)
  (jag--setup-evil-exchange-config))

(provide 'init-evil-exchange)
;;; init-evil-exchange.el ends here