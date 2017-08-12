;;; init-company-statistics.el --- Remembers-most-used-items-and-favors-them
;;; Commentary:

;;; Code:

(defun jag--set-company-statistics-key-bindings ()
  "Set up keybindings for company-statistics.")

(defun jag--setup-company-statistics-config ()
  "Set up personal configuation for company-statistics.")

(defun jag--load-company-statistics-requires ()
  "Load required sub packages for company-statistics.")

(use-package company-statistics
  :ensure t
  :config
  (jag--load-company-statistics-requires)
  (jag--set-company-statistics-key-bindings)
  (jag--setup-company-statistics-config))

(provide 'init-company-statistics)
;;; init-company-statistics.el ends here
