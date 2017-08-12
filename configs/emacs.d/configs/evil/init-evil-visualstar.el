;;; init-evil-visualstar.el --- Allows-to-make-visual-selection-the-hit-* to-search
;;; Commentary:

;;; Code:

(defun jag--set-evil-visualstar-key-bindings ()
  "Set up keybindings for evil-visualstar.")

(defun jag--setup-evil-visualstar-config ()
  "Set up personal configuation for evil-visualstar.")

(defun jag--load-evil-visualstar-requires ()
  "Load required sub packages for evil-visualstar.")

(use-package evil-visualstar
  :ensure t
  :config
  (jag--load-evil-visualstar-requires)
  (jag--set-evil-visualstar-key-bindings)
  (jag--setup-evil-visualstar-config))

(provide 'init-evil-visualstar)
;;; init-evil-visualstar.el ends here
