;;; init-indent-guide.el --- Shows-indention-with-the-pipe-character
;;; Commentary:

;;; Code:

(defun jag--add-indent-guide-hooks ()
  "Add hooks to indent-guide."
  (jag--add-indent-guide-key-hooks)
  (jag--add-indent-guide-other-hooks))

(defun jag--add-indent-guide-key-hooks ()
  "Add keyboard hooks to indent-guide.")

(defun jag--add-indent-guide-other-hooks ()
  "Add other hooks to indent-guide.")

(defun jag--set-indent-guide-key-bindings ()
  "Set up keybindings for indent-guide.")

(defun jag--setup-indent-guide-config ()
  "Set up personal configuation for indent-guide."
  (indent-guide-global-mode))

(defun jag--load-indent-guide-requires ()
  "Load required sub packages for indent-guide.")

(use-package indent-guide
  :init
  (jag--load-indent-guide-requires)
  (jag--add-indent-guide-hooks)
  :ensure t
  :config
  (jag--set-indent-guide-key-bindings)
  (jag--setup-indent-guide-config))

(provide 'init-indent-guide)
;;; init-indent-guide.el ends here