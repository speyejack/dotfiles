;;; init-indent-guide.el --- Shows-indention-with-the-pipe-character
;;; Commentary:

;;; Code:

(defun jag--set-indent-guide-key-bindings ()
  "Set up keybindings for indent-guide.")

(defun jag--setup-indent-guide-config ()
  "Set up personal configuation for indent-guide."
  (indent-guide-global-mode))

(defun jag--load-indent-guide-requires ()
  "Load required sub packages for indent-guide.")

(use-package indent-guide
  :ensure t
  :config
  (jag--load-indent-guide-requires)
  (jag--set-indent-guide-key-bindings)
  (jag--setup-indent-guide-config))

(provide 'init-indent-guide)
;;; init-indent-guide.el ends here
