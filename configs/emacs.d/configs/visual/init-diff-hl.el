;;; init-diff-hl.el --- Shows-uncommited-changes-in-a-file
;;; Commentary:

;;; Code:

(defun jag--set-diff-hl-key-bindings ()
  "Set up keybindings for diff-hl.")

(defun jag--setup-diff-hl-config ()
  "Set up personal configuation for diff-hl."
  (add-hook 'prog-mode-hook 'diff-hl-mode))

(defun jag--load-diff-hl-requires ()
  "Load required sub packages for diff-hl.")

(use-package diff-hl
  :ensure t
  :config
  (jag--load-diff-hl-requires)
  (jag--set-diff-hl-key-bindings)
  (jag--setup-diff-hl-config))

(provide 'init-diff-hl)
;;; init-diff-hl.el ends here
