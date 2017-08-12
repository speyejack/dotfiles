;;; init-bbdb.el --- Creates-a-complete-address-book-for-people
;;; Commentary:

;;; Code:

(defun jag--set-bbdb-key-bindings ()
  "Set up keybindings for bbdb.")

(defun jag--setup-bbdb-config ()
  "Set up personal configuation for bbdb.")

(defun jag--load-bbdb-requires ()
  "Load required sub packages for bbdb.")

(use-package bbdb
  :ensure t
  :config
  (jag--load-bbdb-requires)
  (jag--set-bbdb-key-bindings)
  (jag--setup-bbdb-config))

(provide 'init-bbdb)
;;; init-bbdb.el ends here
