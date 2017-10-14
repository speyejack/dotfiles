;;; init-evil-exchange.el --- Easily-exchange-two-words
;;; Commentary:

;;; Code:

(defun jag--set-evil-exchange-key-bindings ()
  "Set up keybindings for evil-exchange.")

(defun jag--setup-evil-exchange-config ()
  "Set up personal configuation for evil-exchange.")

(defun jag--load-evil-exchange-requires ()
  "Load required sub packages for evil-exchange.")

(use-package evil-exchange
  :ensure t
  :commands 'evil-exchange
  :config
  (jag--load-evil-exchange-requires)
  (jag--set-evil-exchange-key-bindings)
  (jag--setup-evil-exchange-config))

(provide 'init-evil-exchange)
;;; init-evil-exchange.el ends here
