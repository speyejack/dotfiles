;;; init-highlight-numbers.el --- Highlight-numbers-in-code
;;; Commentary:

;;; Code:

(defun jag--add-highlight-numbers-hooks ()
  "Add hooks to highlight-numbers."
  (jag--add-highlight-numbers-key-hooks)
  (jag--add-highlight-numbers-other-hooks))

(defun jag--add-highlight-numbers-key-hooks ()
  "Add keyboard hooks to highlight-numbers.")

(defun jag--add-highlight-numbers-other-hooks ()
  "Add other hooks to highlight-numbers.")

(defun jag--set-highlight-numbers-key-bindings ()
  "Set up keybindings for highlight-numbers.")

(defun jag--setup-highlight-numbers-config ()
  "Set up personal configuation for highlight-numbers."
  (add-hook 'prog-mode-hook 'highlight-numbers-mode))

  (defun jag--load-highlight-numbers-requires ()
	"Load required sub packages for highlight-numbers.")

(use-package highlight-numbers
  :init
  (jag--load-highlight-numbers-requires)
  (jag--add-highlight-numbers-hooks)
  :ensure t
  :config
  (jag--set-highlight-numbers-key-bindings)
  (jag--setup-highlight-numbers-config))

(provide 'init-highlight-numbers)
;;; init-highlight-numbers.el ends here