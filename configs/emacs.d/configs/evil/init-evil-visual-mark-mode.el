;;; init-evil-visual-mark-mode.el --- Shows-all-evil-marks-in-buffer
;;; Commentary:

;;; Code:

(defun jag--set-evil-visual-mark-mode-key-bindings ()
  "Set up keybindings for evil-visual-mark-mode.")

(defun jag--setup-evil-visual-mark-mode-config ()
  "Set up personal configuation for evil-visual-mark-mode.")

(defun jag--load-evil-visual-mark-mode-requires ()
  "Load required sub packages for evil-visual-mark-mode.")

(use-package evil-visual-mark-mode
  :ensure t
  :config
  (jag--load-evil-visual-mark-mode-requires)
  (jag--set-evil-visual-mark-mode-key-bindings)
  (jag--setup-evil-visual-mark-mode-config))

(provide 'init-evil-visual-mark-mode)
;;; init-evil-visual-mark-mode.el ends here
