;;; init-evil-visualstar.el --- Allows-to-make-visual-selection-the-hit-* to-search
;;; Commentary:

;;; Code:

(defun jag--add-evil-visualstar-hooks ()
  "Add hooks to evil-visualstar."
  (jag--add-evil-visualstar-key-hooks)
  (jag--add-evil-visualstar-other-hooks))

(defun jag--add-evil-visualstar-key-hooks ()
  "Add keyboard hooks to evil-visualstar.")

(defun jag--add-evil-visualstar-other-hooks ()
  "Add other hooks to evil-visualstar.")

(defun jag--set-evil-visualstar-key-bindings ()
  "Set up keybindings for evil-visualstar.")

(defun jag--setup-evil-visualstar-config ()
  "Set up personal configuation for evil-visualstar."
  (global-evil-visualstar-mode 1))

(defun jag--load-evil-visualstar-requires ()
  "Load required sub packages for evil-visualstar.")

(use-package evil-visualstar
  :init
  (jag--load-evil-visualstar-requires)
  (jag--add-evil-visualstar-hooks)
  :ensure t
  :after evil
  :defer t
  :config
  (jag--set-evil-visualstar-key-bindings)
  (jag--setup-evil-visualstar-config))

(provide 'init-evil-visualstar)
;;; init-evil-visualstar.el ends here
