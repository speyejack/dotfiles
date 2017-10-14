;;; init-evil-visual-mark-mode.el --- Shows-all-evil-marks-in-buffer
;;; Commentary:

;;; Code:

(defun jag--add-evil-visual-mark-mode-hooks ()
  "Add hooks to evil-visual-mark-mode."
  (jag--add-evil-visual-mark-mode-key-hooks)
  (jag--add-evil-visual-mark-mode-other-hooks))

(defun jag--add-evil-visual-mark-mode-key-hooks ()
  "Add keyboard hooks to evil-visual-mark-mode.")

(defun jag--add-evil-visual-mark-mode-other-hooks ()
  "Add other hooks to evil-visual-mark-mode.")

(defun jag--set-evil-visual-mark-mode-key-bindings ()
  "Set up keybindings for evil-visual-mark-mode.")

(defun jag--setup-evil-visual-mark-mode-config ()
  "Set up personal configuation for evil-visual-mark-mode.")

(defun jag--load-evil-visual-mark-mode-requires ()
  "Load required sub packages for evil-visual-mark-mode.")

(use-package evil-visual-mark-mode
  :init
  (jag--load-evil-visual-mark-mode-requires)
  (jag--add-evil-visual-mark-mode-hooks)
  :ensure t
  :config
  (jag--set-evil-visual-mark-mode-key-bindings)
  (jag--setup-evil-visual-mark-mode-config))

(provide 'init-evil-visual-mark-mode)
;;; init-evil-visual-mark-mode.el ends here