;;; init-evil-numbers.el --- Allows-manipulation-of-numbers-like-incr-or-decr, with-evil!
;;; Commentary:

;;; Code:

(defun jag--set-evil-numbers-key-bindings ()
  "Set up keybindings for evil-numbers."
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c =") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt))

(defun jag--setup-evil-numbers-config ()
  "Set up personal configuation for evil-numbers.")

(defun jag--load-evil-numbers-requires ()
  "Load required sub packages for evil-numbers.")

(use-package evil-numbers
  :ensure t
  :config
  (jag--load-evil-numbers-requires)
  (jag--set-evil-numbers-key-bindings)
  (jag--setup-evil-numbers-config))

(provide 'init-evil-numbers)
;;; init-evil-numbers.el ends here
