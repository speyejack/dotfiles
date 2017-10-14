;;; init-bbdb.el --- Creates-a-complete-address-book-for-people
;;; Commentary:

;;; Code:

(defun jag--add-bbdb-hooks ()
  "Add hooks to bbdb."
  (jag--add-bbdb-key-hooks)
  (jag--add-bbdb-other-hooks))

(defun jag--add-bbdb-key-hooks ()
  "Add keyboard hooks to bbdb.")

(defun jag--add-bbdb-other-hooks ()
  "Add other hooks to bbdb.")

(defun jag--set-bbdb-key-bindings ()
  "Set up keybindings for bbdb.")

(defun jag--setup-bbdb-config ()
  "Set up personal configuation for bbdb.")

(defun jag--load-bbdb-requires ()
  "Load required sub packages for bbdb.")

(use-package bbdb
  :init
  (jag--load-bbdb-requires)
  (jag--add-bbdb-hooks)
  :ensure t
  :config
  (jag--set-bbdb-key-bindings)
  (jag--setup-bbdb-config))

(provide 'init-bbdb)
;;; init-bbdb.el ends here