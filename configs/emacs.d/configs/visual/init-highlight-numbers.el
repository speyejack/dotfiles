;;; init-highlight-numbers.el --- Highlight-numbers-in-code
;;; Commentary:

;;; Code:

(defun jag--set-highlight-numbers-key-bindings ()
  "Set up keybindings for highlight-numbers.")

(defun jag--setup-highlight-numbers-config ()
  "Set up personal configuation for highlight-numbers.")

(defun jag--load-highlight-numbers-requires ()
  "Load required sub packages for highlight-numbers.")

(use-package highlight-numbers
  :ensure t
  :config
  (jag--load-highlight-numbers-requires)
  (jag--set-highlight-numbers-key-bindings)
  (jag--setup-highlight-numbers-config))

(provide 'init-highlight-numbers)
;;; init-highlight-numbers.el ends here
