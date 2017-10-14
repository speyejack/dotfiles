;;; init-company-statistics.el --- Remembers-most-used-items-and-favors-them
;;; Commentary:

;;; Code:

(defun jag--add-company-statistics-hooks ()
  "Add hooks to company-statistics."
  (jag--add-company-statistics-key-hooks)
  (jag--add-company-statistics-other-hooks))

(defun jag--add-company-statistics-key-hooks ()
  "Add key hooks to company-statistics.")

(defun jag--add-company-statistics-other-hooks ()
  "Add mode other to company-statistics.")

(defun jag--set-company-statistics-key-bindings ()
  "Set up keybindings for company-statistics.")

(defun jag--setup-company-statistics-config ()
  "Set up personal configuation for company-statistics."
  (company-statistics-mode 1))

(defun jag--load-company-statistics-requires ()
  "Load required sub packages for company-statistics.")

(use-package company-statistics
  :init
  (jag--load-company-statistics-requires)
  (jag--add-company-statistics-hooks)
  :ensure t
  :config
  (jag--set-company-statistics-key-bindings)
  (jag--setup-company-statistics-config))

(provide 'init-company-statistics)
;;; init-company-statistics.el ends here