;;; init-volatile-highlights.el --- Highlights-last-yank/undo
;;; Commentary:

;;; Code:

(defun jag--add-volatile-highlights-hooks ()
  "Add hooks to volatile-highlights."
  (jag--add-volatile-highlights-key-hooks)
  (jag--add-volatile-highlights-other-hooks))

(defun jag--add-volatile-highlights-key-hooks ()
  "Add keyboard hooks to volatile-highlights.")

(defun jag--add-volatile-highlights-other-hooks ()
  "Add other hooks to volatile-highlights.")

(defun jag--set-volatile-highlights-key-bindings ()
  "Set up keybindings for volatile-highlights.")

(defun jag--setup-volatile-highlights-config ()
  "Set up personal configuation for volatile-highlights."
  (volatile-highlights-mode t))

(defun jag--load-volatile-highlights-requires ()
  "Load required sub packages for volatile-highlights.")

(use-package volatile-highlights
  :init
  (jag--load-volatile-highlights-requires)
  (jag--add-volatile-highlights-hooks)
  :ensure t
  :defer t
  :diminish 'volatile-highlights-mode
  :config
  (jag--set-volatile-highlights-key-bindings)
  (jag--setup-volatile-highlights-config))

(provide 'init-volatile-highlights)
;;; init-volatile-highlights.el ends here
