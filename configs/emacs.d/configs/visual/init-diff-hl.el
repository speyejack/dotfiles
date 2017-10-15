;;; init-diff-hl.el --- Shows-uncommited-changes-in-a-file
;;; Commentary:

;;; Code:

(defun jag--add-diff-hl-hooks ()
  "Add hooks to diff-hl."
  (jag--add-diff-hl-key-hooks)
  (jag--add-diff-hl-other-hooks))

(defun jag--add-diff-hl-key-hooks ()
  "Add keyboard hooks to diff-hl.")

(defun jag--add-diff-hl-other-hooks ()
  "Add other hooks to diff-hl.")

(defun jag--set-diff-hl-key-bindings ()
  "Set up keybindings for diff-hl.")

(defun jag--setup-diff-hl-config ()
  "Set up personal configuation for diff-hl."
  (add-hook 'prog-mode-hook 'diff-hl-mode))

(defun jag--load-diff-hl-requires ()
  "Load required sub packages for diff-hl.")

(use-package diff-hl
  :init
  (jag--load-diff-hl-requires)
  (jag--add-diff-hl-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-diff-hl-key-bindings)
  (jag--setup-diff-hl-config))

(provide 'init-diff-hl)
;;; init-diff-hl.el ends here
